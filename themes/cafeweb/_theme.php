<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="mit" content="2021-03-29T10:32:56-03:00+163467">
    <meta name="viewport" content="width=device-width,initial-scale=1">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-128170081-6">
</script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-128170081-6');
</script>

    <?= $head; ?>

    <link rel="icon" type="image/png" href="<?= theme("/assets/images/favicon.png"); ?>"/>
    <link rel="stylesheet" href="<?= theme("/assets/style.css"); ?>"/>
    <link rel="stylesheet" href="<?= theme("/assets/css/lightbox.css"); ?>"/>
</head>
<body>

<div class="ajax_load">
    <div class="ajax_load_box">
        <div class="ajax_load_box_circle"></div>
        <p class="ajax_load_box_title">Aguarde, carregando...</p>
    </div>
</div>

<!--HEADER-->
<header class="main-header">
         <div class="container">
             <div class="center">
                  <?php foreach ($site as $value){ ?>
                 <a  href="tel:<?= $value->phone; ?>" class="btn-phone"><i class="fas fa-phone-volume" title="Ligue Agora"></i> Ligue Agora</a>
                     <div class="box-logo">
                         <a href="">
                            <img src="assets/images/logo.jpg" alt="" title="">
                         </a>
                     </div>
                 <a target="_blank" href="https://web.whatsapp.com/send?phone=<?= $value->phone_wp; ?>&text=<?= $value->msg; ?>" class="btn-whatsapp desktop"><i class="fab fa-whatsapp" title="Encomenda Rápida"></i> Encomenda Rápida</a>
                 <a target="_blank" href="https://api.whatsapp.com/send?phone=<?= $value->phone_wp; ?>&text=<?= $value->msg; ?>" class="btn-whatsapp smartphone"><i class="fab fa-whatsapp" title="Encomenda Rápida"></i> Encomenda Rápida</a>
                   <?php } ?>
             </div>
         </div>
         <div class="desc-container">
              <p>
                Seja para uma data especial ou simplesmente para reafirmar o carinho que você sente, esses<br>
                presentes realmente vão surpreender.
              </p>
              <p>
                Em nosso site, você vai encontrar flores, cestas e presentes que procura e outras para servir de<br>
                inspiração para seu presente.
              </p>
         </div>
    </header>
    <!-- end header -->

<!--CONTENT-->
<main class="main-container">
    <?= $v->section("content"); ?>
</main>
<div class="cookie hidden">
    <p> Esse website está em comformidade com a Lei Geral da proteção de Dados (LGPD) e utiliza cookies para
            oferecer uma melhor experiência
            ao visitante. Ao navegar em nosso site, você concorda com a utilização de cookies e com a nossa <a href="">Politica de Privacidade</a></p>
    
    <button type="button" class="accept-cookie">Aceitar</button>
  </div>
<!--FOOTER-->
    <footer class="main-footer">
        <div class="container">
            <div class="social-footer">
                 <?php foreach ($site as $value){ ?>
                <a href="<?= $value->instagram; ?>" class="icon-social" title="Siga no Instagram"><i class="fab fa-instagram"></i></a>
                <a href="tel:<?= $value->phone; ?>" class="icon-social" title="Ligue Agora"><i style="transform: rotate(-40deg);" class="fas fa-phone-volume"></i></a>
                <a target="_blank" href="https://web.whatsapp.com/send?phone=<?= $value->phone_wp; ?>&text=<?= $value->msg; ?>" class="icon-social desktop" title="Enviar uma Mensagem"><i class="fab fa-whatsapp"></i></a>
                <a target="_blank" href="https://api.whatsapp.com/send?phone=<?= $value->phone_wp; ?>&text=<?= $value->msg; ?>" class="icon-social smartphone" title="Enviar uma Mensagem"><i class="fab fa-whatsapp"></i></a>
                 <?php } ?>
            </div>
             <?php foreach ($site as $value){ ?>
            <p>
                <?= $value->copyright; ?>
            </p>
             <?php } ?>
        </div>
    </footer>

    <script src="https://kit.fontawesome.com/86f5b0a58f.js" crossorigin="anonymous"></script>
       <script src="<?= url("/shared/scripts/jquery.min.js"); ?>"></script>
      <script src="https://cdn.jsdelivr.net/npm/js-cookie@2.2.1/src/js.cookie.min.js"></script>
       <script src="<?= theme('/assets/js/lighbox.js'); ?>"></script>
       <script>
            let cooke = document.querySelector(".cookie");
    let accept = document.querySelector(".accept-cookie");

    
      if(Cookies.get('aceito_privacidade')){
      cooke.classList.add("hidden")
    }else{
      cooke.classList.remove("hidden")
    }


    accept.addEventListener("click", e=>{
      Cookies.set("aceito_privacidade", "concordo", {
        expires: 30,
        domains: "https://sunflowergyn.com.br"
      });

      cooke.classList.add("hidden")
    });
            
       </script>

<?= $v->section("scripts"); ?>
</body>
</html>
