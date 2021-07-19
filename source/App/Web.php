<?php

namespace Source\App;

use Source\Models\AbountGallery;
use Source\Models\Service;
use Source\Support\Thumb;
use Source\Support\Upload;
use Source\Support\File;
use Source\Models\SitePost;
use Source\Core\Controller;
use Source\Models\Auth;
use Source\Models\Post;
use Source\Models\Report\Access;
use Source\Models\Report\Online;
use Source\Models\User;
use Source\Support\Pager;

/**
 * Web Controller
 * @package Source\App
 */
class Web extends Controller
{
    /**
     * Web constructor.
     */
    public function __construct()
    {
        parent::__construct(__DIR__ . "/../../themes/" . CONF_VIEW_THEME . "/");

        (new Access())->report();
        (new Online())->report();
    }

    /**
     * SITE HOME
     */
    public function home(): void
    {


        $head = $this->seo->render(
            CONF_SITE_NAME . " - " . CONF_SITE_TITLE,
            CONF_SITE_DESC,
            url(),
             theme("/assets/images/share.png")
        );



        echo $this->view->render("home", [
            "head" => $head,
            "products" => (new Service())
                ->find("","title, uri, content, cover")
                ->order("post_at DESC")

                ->fetch(true),
            "gallery"=>(new AbountGallery())
            ->find("", "cover_img, id_about")
            ->limit(1)
            ->fetch(true),
             "site" => (new SitePost())
                ->find("","phone, msg, instagram, copyright, title, phone_wp")
                ->order("created_at DESC")
                ->limit(1)
                ->fetch(true)
        ]);

    }

/**
     * SITE SERVICE POST
     * @param array $data
     */
    public function productDetail(array $data): void
    {
        $post = (new Service())->findByUri($data['uri']);
        if (!$post) {
            redirect("/404");
        }




        $head = $this->seo->render(
            "{$post->title} - " . CONF_SITE_NAME,
            url("/service/{$post->uri}"),
            ($post->cover ? url("/storage/".$post->cover) :  theme("/assets/images/share.png"))
        );

        echo $this->view->render("post", [
            "head" => $head,
            "post" => $post,
            "photos"=> (new AbountGallery())
            ->find("", "cover_img, id_about")
            ->fetch(true),
             "site" => (new SitePost())
                ->find("","phone, phone_wp")
                ->order("created_at DESC")
                ->limit(1)
                ->fetch(true)
        ]);
    }



    /**
     * SITE NAV ERROR
     * @param array $data
     */
    public function error(array $data): void
    {
        $error = new \stdClass();

        switch ($data['errcode']) {
            case "problemas":
                $error->code = "OPS";
                $error->title = "Estamos enfrentando problemas!";
                $error->message = "Parece que nosso serviço não está diponível no momento. Já estamos vendo isso mas caso precise, envie um e-mail :)";
                $error->linkTitle = "ENVIAR E-MAIL";
                $error->link = "mailto:" . CONF_MAIL_SUPPORT;
                break;

            case "manutencao":
                $error->code = "OPS";
                $error->title = "Desculpe. Estamos em manutenção!";
                $error->message = "Voltamos logo! Por hora estamos trabalhando para melhorar nosso conteúdo para você";
                $error->linkTitle = null;
                $error->link = null;
                break;

            default:
                $error->code = $data['errcode'];
                $error->title = "Ooops. Conteúdo indispinível :/";
                $error->message = "Sentimos muito, mas o conteúdo que você tentou acessar não existe, está indisponível no momento ou foi removido :/";
                $error->linkTitle = "Continue navegando!";
                $error->link = url_back();
                break;
        }

        $head = $this->seo->render(
            "{$error->code} | {$error->title}",
            $error->message,
            url("/ops/{$error->code}"),
             theme("/assets/images/share.png"),
            false
        );

        echo $this->view->render("error", [
            "head" => $head,
            "error" => $error
        ]);
    }
}