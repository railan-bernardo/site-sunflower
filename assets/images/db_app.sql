-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 09-Jun-2021 às 20:02
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_app`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `about`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `post_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `about`
--

INSERT INTO `about` VALUES(1, 'QUEM SOMOS', 'images/2021/04/about-us.png', '<p>Com sede em Goiânia/ GO a GOIÂNIA TENDAS foi criada 2013 e desde então vem se especializando em infraestruturas para diversos tipos de eventos. Nosso compromisso é cobrir com excelência, beleza e segurança. Hoje<br />atendemos todo território brasileiro cobrindo festas, feiras abertas, exposições, camping, workshops, casamentos,<br />confraternizações ou qualquer ocasião onde necessite de coberturas de qualidade.</p>\n<p>A empresa conta com excelente estrutura interna e equipe bem treinada para a produção de tendas e acessórios</p>\n<p>Estamos constantemente buscando soluções para as necessidades dos clientes. Adquirindo novas tecnologias,<br />buscando parcerias com o objetivo de aumentar a vida útil e melhorar a estabilidade do produto final, além de proporcionar requinte e conforto para todos os tipos de evento.</p>', '2021-04-03 01:52:00', '2021-04-02 20:53:05', '2021-06-01 20:43:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `about_gallery`
--
-- Criação: 01-Jun-2021 às 20:18
--

CREATE TABLE `about_gallery` (
  `id` int(11) NOT NULL,
  `id_about` int(11) NOT NULL,
  `cover_img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `about_gallery`
--

INSERT INTO `about_gallery` VALUES(1, 1, 'images/2021/06/1622581242quem-somos1.jpg', '2021-06-01 21:00:43');
INSERT INTO `about_gallery` VALUES(2, 1, 'images/2021/06/1622581243quem-somos2.jpg', '2021-06-01 21:00:44');

-- --------------------------------------------------------

--
-- Estrutura da tabela `address`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `street` varchar(255) NOT NULL DEFAULT '',
  `number` varchar(255) NOT NULL DEFAULT '',
  `complement` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_categories`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `app_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_of` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(15) NOT NULL DEFAULT '',
  `order_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_categories`
--

INSERT INTO `app_categories` VALUES(1, NULL, 'Salário', 'income', 0, '2018-11-29 11:30:32', '2018-11-29 12:10:21');
INSERT INTO `app_categories` VALUES(2, NULL, 'Investimento', 'income', 1, '2018-11-29 11:30:41', '2018-12-05 00:03:30');
INSERT INTO `app_categories` VALUES(3, NULL, 'Empréstimo', 'income', 1, '2018-11-29 11:30:53', '2018-12-05 00:03:35');
INSERT INTO `app_categories` VALUES(4, NULL, 'Outras receitas', 'income', 2, '2018-11-29 11:31:21', '2018-11-29 12:09:59');
INSERT INTO `app_categories` VALUES(5, NULL, 'Alimentação', 'expense', 0, '2018-11-29 11:32:15', '2018-11-29 11:32:15');
INSERT INTO `app_categories` VALUES(6, NULL, 'Aluguel', 'expense', 0, '2018-11-29 11:32:19', '2018-12-05 00:03:44');
INSERT INTO `app_categories` VALUES(7, NULL, 'Compras', 'expense', 0, '2018-11-29 11:32:33', '2018-11-29 11:32:33');
INSERT INTO `app_categories` VALUES(8, NULL, 'Educação', 'expense', 0, '2018-11-29 11:32:34', '2018-11-29 11:32:38');
INSERT INTO `app_categories` VALUES(9, NULL, 'Entretenimento', 'expense', 0, '2018-11-29 11:32:49', '2018-11-29 11:32:51');
INSERT INTO `app_categories` VALUES(10, NULL, 'Impostos e taxas', 'expense', 0, '2018-11-29 11:32:57', '2018-11-29 11:32:57');
INSERT INTO `app_categories` VALUES(11, NULL, 'Saúde', 'expense', 0, '2018-11-29 11:33:08', '2018-11-29 11:33:31');
INSERT INTO `app_categories` VALUES(12, NULL, 'Serviços', 'expense', 0, '2018-11-29 11:33:13', '2018-11-29 11:33:32');
INSERT INTO `app_categories` VALUES(13, NULL, 'Viagen', 'expense', 0, '2018-11-29 11:33:23', '2018-12-05 00:03:56');
INSERT INTO `app_categories` VALUES(14, NULL, 'Outras despesas', 'expense', 2, '2018-11-29 11:33:29', '2018-11-29 12:10:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_credit_cards`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `app_credit_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `brand` varchar(20) NOT NULL DEFAULT '',
  `last_digits` varchar(11) NOT NULL DEFAULT '',
  `cvv` varchar(11) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_invoices`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `app_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `wallet_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `invoice_of` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(15) NOT NULL DEFAULT '',
  `value` decimal(10,2) NOT NULL,
  `currency` varchar(5) NOT NULL DEFAULT 'BRL',
  `due_at` date NOT NULL,
  `repeat_when` varchar(10) NOT NULL DEFAULT '',
  `period` varchar(10) NOT NULL DEFAULT 'month',
  `enrollments` int(11) DEFAULT NULL,
  `enrollment_of` int(11) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_orders`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `app_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `card_id` int(10) UNSIGNED DEFAULT NULL,
  `subscription_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_plans`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `app_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `period` varchar(11) NOT NULL DEFAULT '',
  `period_str` varchar(11) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_plans`
--

INSERT INTO `app_plans` VALUES(1, 'PRO', '1month', 'mês', '5.00', 'active', '2018-12-21 10:02:22', '2019-01-03 19:45:18');
INSERT INTO `app_plans` VALUES(2, 'PRO', '1year', 'ano', '50.00', 'active', '2018-12-21 10:02:57', '2019-02-06 08:57:49');
INSERT INTO `app_plans` VALUES(3, 'EXPERT', '1month', 'mês', '75.00', 'inactive', '2018-12-21 10:04:02', '2018-12-23 22:56:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_subscriptions`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `app_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `plan_id` int(10) UNSIGNED DEFAULT NULL,
  `card_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active' COMMENT 'active,inactive,past_due,canceled',
  `pay_status` varchar(10) NOT NULL DEFAULT 'active' COMMENT 'active,inactive,past_due,canceled',
  `started` date NOT NULL,
  `due_day` int(11) NOT NULL,
  `next_due` date NOT NULL,
  `last_charge` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_wallets`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `app_wallets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `wallet` varchar(255) NOT NULL DEFAULT '',
  `free` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `budget`
--
-- Criação: 03-Jun-2021 às 23:56
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `juridic` varchar(80) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `state` varchar(80) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `items` varchar(255) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `budget`
--

INSERT INTO `budget` VALUES(2, 'vazio', 'Railan Bernardo', 'suporte@gmail.com.br', 'vazio', '62991346028', 'vazio', 'vazio', 'vazio', 'vazio', NULL, NULL, 'Mensagem de Contato', '2021-06-03 22:58:30');
INSERT INTO `budget` VALUES(3, 'vazio', 'Railan Bernardo', 'suporte@gmail.com.br', 'vazio', '62991346028', 'vazio', 'vazio', 'vazio', 'vazio', NULL, NULL, 'Mensagem de Contato', '2021-06-03 23:02:12');
INSERT INTO `budget` VALUES(4, 'vazio', 'Railan Bernardo', 'suporte@gmail.com.br', 'vazio', '62991346028', 'vazio', 'vazio', 'vazio', 'vazio', NULL, NULL, 'Mensagem de Contato', '2021-06-03 23:05:05');
INSERT INTO `budget` VALUES(5, 'vazio', 'Railan Bernardo', 'suporte@gmail.com.br', 'vazio', '62991346028', 'vazio', 'vazio', 'vazio', 'vazio', 'vazio', 'vazio', 'Mensagem de Contato', '2021-06-04 00:07:34');
INSERT INTO `budget` VALUES(6, 'Pessoa Fisica', 'Railan Bernardo', 'suporte@gmail.com.br', '62991346028', '+556299134602', 'Goiás', 'Goianira', 'Rua 9', '75370-000', 'Full Tech', 'item 1, item 2', 'vazio', '2021-06-04 00:29:07');
INSERT INTO `budget` VALUES(7, 'Pessoa Fisica', 'Railan Bernardo', 'suporte@gmail.com.br', '62991346028', '6299134602', 'Goiás', 'Goianira', 'Rua 9', '75370-000', 'Full Tech', 'jkjkjkjk', 'vazio', '2021-06-04 00:32:27');
INSERT INTO `budget` VALUES(8, 'Pessoa Fisica', 'Railan Bernardo', 'suporte@gmail.com.br', '62991346028', '6299134602', 'Goiás', 'Goianira', 'Rua 9', '75370-000', 'Full Tech', 'jkjkjkjkççlç', 'vazio', '2021-06-04 00:33:22');
INSERT INTO `budget` VALUES(9, 'Pessoa Fisica', 'Railan Bernardo', 'suporte@gmail.com.br', '62991346028', '+556299134602', 'Goiás', 'Goianira', 'Rua 9', '75370-000', 'Full Tech', 'gfhhujdffgf', 'vazio', '2021-06-04 00:35:53');
INSERT INTO `budget` VALUES(10, 'Pessoa Fisica', 'Railan Bernardo', 'suporte@gmail.com.br', '+556299134602', '+556299134602', 'Goiás', 'Goianira', 'Rua 9', '75370-000', 'Full Tech', 'kjhkfgf', 'vazio', '2021-06-04 00:40:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uri` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'post' COMMENT 'post, page, etc',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` VALUES(4, 'teste', 'teste', 'sdsds', 'images/2021/03/teste-1617134439.jpg', 'post', '2021-03-30 20:00:39', '2021-03-30 20:00:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact`
--
-- Criação: 04-Jun-2021 às 01:53
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contact`
--

INSERT INTO `contact` VALUES(14, 'Testeq', 'isadoramarquett@gmail.com', '7705395387', '', 'testetestetestetestetestetestetesteteste', '2021-04-10 19:08:12', '2021-04-10 19:08:12');
INSERT INTO `contact` VALUES(15, 'Joao', 'jpcabral1992@gmail.com', '7705395387', '', 'TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TES', '2021-04-12 23:37:50', '2021-04-12 23:37:50');
INSERT INTO `contact` VALUES(16, 'Javon Jones', 'javonjones.mkt@gmail.com', '2816835561', '', 'Hey! Hope you are doing well & staying safe.\r\n\r\nAs I see you have a newly launched website, not showing on top search engines like Google/Bing/Yahoo. Did you know If you are on page #1 you will get so many new customers every day?\r\nTake advantage of this ', '2021-04-16 09:11:07', '2021-04-16 09:11:07');
INSERT INTO `contact` VALUES(17, 'Iva Cumpston', 'cumpston.iva@gmail.com', '06-19056448', '', 'Online shopping is an 800 BILLION dollar market and today is your chance to become a highly paid leader and “go-to” person IN that market and earn commissions on autopilot.\r\n\r\nI’m talking up to 75% commissions from Crypto, Amazon, Clickbank and many more ', '2021-04-24 16:14:53', '2021-04-24 16:14:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq_channels`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `faq_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `faq_channels`
--

INSERT INTO `faq_channels` VALUES(1, 'Sobre o CaféControl', 'Saiba mais sobre o CaféControl', '2018-10-21 12:24:51', '2018-10-21 12:27:21');
INSERT INTO `faq_channels` VALUES(10, 'Sobre CMS CaféAdmin', 'Canal criado apenas para gerar paginação na implementação da tela de FAQs', '2019-02-07 11:05:31', '2019-02-07 11:33:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq_questions`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `faq_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `response` text NOT NULL,
  `order_by` int(10) UNSIGNED DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `faq_questions`
--

INSERT INTO `faq_questions` VALUES(1, 1, 'O CaféControl é gratuito?', '<p>Sim, o CaféControl é gratuito e com ele você pode usar os recursos de controle e automação sem qualquer custo ou cobrança.</p><p>No futuro pretendemos ter planos com recursos premium onde você terá ainda mais controle, este será um plano pago, mas você poderá optar por usa-lo ou continuar no plano gratuito.</p>', 1, '2018-10-21 12:28:11', '2018-10-21 12:48:41');
INSERT INTO `faq_questions` VALUES(2, 1, 'O que fazer com o CaféControl?', '<p>Com o CaféControl você pode lançar suas contas a receber ou a pagar, além disso pode lançar recorrências e usufruir de poderosas automações de controle, tudo de forma muito simples.</p><p>Com as contas organizadas em seu painel, você passa a ter acesso a relatórios e gráficos incríveis, além de ser notificado sempre que uma ação for necessária, como validar ou pagar uma conta.</p>', 2, '2018-10-21 12:30:04', '2018-10-21 12:49:17');
INSERT INTO `faq_questions` VALUES(4, 1, 'Como usar o CaféControl?', '<p>Para usar o CaféControl é simples, basta se cadastrar em nossa plataforma e começar a cadastrar suas contas.</p><p>Detalhando contas rotineiras e recorentes, todas com valor, categorias e informações de controle. A partir disso nosso APP vai gerar automações e relatórios para te ajudar a controlar.</p><p>Simples, fácil e gratuito!</p>', 3, '2018-10-22 11:04:00', '2018-10-22 11:06:41');
INSERT INTO `faq_questions` VALUES(5, 1, 'De onde surgiu o CaféControl?', '<p>O CaféControl é um projeto desenvolvido na formação Full Stack PHP Developer da UpInside Treinamentos, onde o aluno tem acesso do zero ao expert em uma formação completa sobre ferramentas, HTML, CSS e jQuery.</p><p>Uma formação aprofundada com foco em PHP onde desenvolvemos esse e vários outros projetos a partir do zero.</p><p>Quer saber mais? <a target=\'_blank\' href=\'https://www.upinside.com.br/fsphp\' title=\'Full Stack PHP Developer\'>Acesse aqui</a> e conheça a formação!</p>', 4, '2018-10-22 11:07:01', '2018-10-22 11:09:46');
INSERT INTO `faq_questions` VALUES(6, 1, 'Sobre a UpInside Treinamentos', '<p>A UpInside Treinamentos é uma escola de formação profissional em desenvolvimento web e programação. Hoje eleita a melhor do Brasil no segmento, tendo reconhecimento em mais de 17 países da AL.</p>', 5, '2018-10-22 11:10:32', '2018-10-22 11:11:35');
INSERT INTO `faq_questions` VALUES(8, 1, 'Ainda com dúvidas?', '<p>Caso ainda tenha qualquer dúvida, fique a vontade para entrar em contato consoco em nossos canais de atendimento. Estamos aqui para te ajudar a controlar suas contas enquanto toma um ótimo café :)</p>', 6, '2018-10-22 11:11:58', '2018-10-22 11:12:42');
INSERT INTO `faq_questions` VALUES(9, 10, 'Tudo já está implementado e testado?', 'Todo o MVP do painel foi implementado e testado. Óbvio que cabe a cada um melhorar e gerar mais valor nessa que pode ser uma incrível ferramenta.', 1, '2019-02-07 11:34:10', '2019-02-07 14:57:57');
INSERT INTO `faq_questions` VALUES(10, 10, 'Teremos mais implementações no curso?', 'No curso não, mas teremos HandOns (lives) de implementação para que possamos nos aprofundar cada vez mais na ferramenta.', 1, '2019-02-07 11:35:06', '2019-02-07 14:57:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gallery`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'draft',
  `post_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gallery`
--

INSERT INTO `gallery` VALUES(13, 'Marble Tile/Sheet', 'images/2021/04/marble-tile-sheet-1618084732.jpg', 'post', '2021-04-10 22:58:00', '2021-04-10 19:58:52', '2021-04-10 19:58:52', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gallery_service`
--
-- Criação: 01-Jun-2021 às 19:04
-- Última actualização: 02-Jun-2021 às 22:21
-- Última verificação: 03-Jun-2021 às 14:05
--

CREATE TABLE `gallery_service` (
  `id` int(11) NOT NULL,
  `cover_img` varchar(255) DEFAULT NULL,
  `idservice` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gallery_service`
--

INSERT INTO `gallery_service` VALUES(1, 'images/2021/06/1622575185tenda-piramidal1.jpg', 1, '2021-06-01 19:19:46');
INSERT INTO `gallery_service` VALUES(2, 'images/2021/06/1622575186tenda-piramidal2.jpg', 1, '2021-06-01 19:19:46');
INSERT INTO `gallery_service` VALUES(3, 'images/2021/06/1622575369tenda-piramidal-21.jpg', 2, '2021-06-01 19:22:50');
INSERT INTO `gallery_service` VALUES(4, 'images/2021/06/1622575370tenda-piramidal-22.jpg', 2, '2021-06-01 19:22:50');
INSERT INTO `gallery_service` VALUES(5, 'images/2021/06/1622575506tenda-piramidal-31.jpg', 3, '2021-06-01 19:25:06');
INSERT INTO `gallery_service` VALUES(6, 'images/2021/06/1622575506tenda-piramidal-32.jpg', 3, '2021-06-01 19:25:07');
INSERT INTO `gallery_service` VALUES(7, 'images/2021/06/1622575634tenda-piramida-41.jpg', 4, '2021-06-01 19:27:14');
INSERT INTO `gallery_service` VALUES(8, 'images/2021/06/1622575634tenda-piramida-42.jpg', 4, '2021-06-01 19:27:15');
INSERT INTO `gallery_service` VALUES(9, 'images/2021/06/1622575744tenda-piramidal-51.jpg', 5, '2021-06-01 19:29:04');
INSERT INTO `gallery_service` VALUES(10, 'images/2021/06/1622575744tenda-piramidal-52.jpg', 5, '2021-06-01 19:29:05');
INSERT INTO `gallery_service` VALUES(11, 'images/2021/06/1622575852tenda-piramidal-61.jpg', 6, '2021-06-01 19:30:53');
INSERT INTO `gallery_service` VALUES(12, 'images/2021/06/1622575853tenda-piramidal-62.jpg', 6, '2021-06-01 19:30:54');
INSERT INTO `gallery_service` VALUES(13, 'images/2021/06/1622575951tenda-piramidal-71.jpg', 7, '2021-06-01 19:32:32');
INSERT INTO `gallery_service` VALUES(14, 'images/2021/06/1622575952tenda-piramidal-72.jpg', 7, '2021-06-01 19:32:33');
INSERT INTO `gallery_service` VALUES(15, 'images/2021/06/1622576106tenda-piramidal-81.jpg', 8, '2021-06-01 19:35:06');
INSERT INTO `gallery_service` VALUES(16, 'images/2021/06/1622576106tenda-piramidal-82.jpg', 8, '2021-06-01 19:35:07');
INSERT INTO `gallery_service` VALUES(17, 'images/2021/06/1622576206tenda-piramidal-91.jpg', 9, '2021-06-01 19:36:46');
INSERT INTO `gallery_service` VALUES(18, 'images/2021/06/1622576206tenda-piramidal-92.jpg', 9, '2021-06-01 19:36:47');
INSERT INTO `gallery_service` VALUES(23, 'images/2021/06/1622672510tenda-chapeu-de-bruxa1.jpg', 11, '2021-06-02 22:21:50');
INSERT INTO `gallery_service` VALUES(24, 'images/2021/06/1622672510tenda-chapeu-de-bruxa2.jpg', 11, '2021-06-02 22:21:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mail_queue`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `mail_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `from_email` varchar(255) NOT NULL DEFAULT '',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `recipient_email` varchar(255) NOT NULL DEFAULT '',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mail_queue`
--

INSERT INTO `mail_queue` VALUES(1, '[PAGAMENTO CONFIRMADO] Obrigado por assinar o CaféApp', '<!doctype html>\n<html>\n<head>\n    <meta name=\"viewport\" content=\"width=device-width\"/>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <title>[PAGAMENTO CONFIRMADO] Obrigado por assinar o CaféApp</title>\n    <style>\n        body {\n            -webkit-box-sizing: border-box;\n            -moz-box-sizing: border-box;\n            box-sizing: border-box;\n            font-family: Helvetica, sans-serif;\n        }\n\n        table {\n            max-width: 500px;\n            padding: 0 10px;\n            background: #ffffff;\n        }\n\n        .content {\n            font-size: 16px;\n            margin-bottom: 25px;\n            padding-bottom: 5px;\n            border-bottom: 1px solid #EEEEEE;\n        }\n\n        .content p {\n            margin: 25px 0;\n        }\n\n        .footer {\n            font-size: 14px;\n            color: #888888;\n            font-style: italic;\n        }\n\n        .footer p {\n            margin: 0 0 2px 0;\n        }\n    </style>\n</head>\n<body>\n<table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            <div class=\"content\">\n                \n<h3>Obrigado Robson!</h3><p>Estamos passando apenas para agradecer por você ser um assinante CaféApp PRO.</p><p>Sua fatura deste mês venceu hoje e já está paga de acordo com seu plano. Qualquer dúvida estamos a disposição.</p>                <p>Atenciosamente, equipe CaféControl.</p>\n            </div>\n            <div class=\"footer\">\n                <p>CaféControl - Gerencie suas contas com o melhor café</p>\n                <p>SC 406 - Rod. Drº Antônio Luiz Moura Gonzaga                    , 3339, Bloco A, Sala 208</p>\n                <p>Florianópolis/SC - 88048-301</p>\n            </div>\n        </td>\n    </tr>\n</table>\n</body>\n</html>\n', 'cursos@upinside.com.br', 'Robson V. Leite', 'robsonvleite@gmail.com', 'Robson Leite', '2019-01-31 17:23:54', '2019-01-04 14:13:11', '2019-02-07 14:57:26');
INSERT INTO `mail_queue` VALUES(2, '[PAGAMENTO RECUSADO] Sua conta CaféApp precisa de atenção', '<!doctype html>\n<html>\n<head>\n    <meta name=\"viewport\" content=\"width=device-width\"/>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <title>[PAGAMENTO RECUSADO] Sua conta CaféApp precisa de atenção</title>\n    <style>\n        body {\n            -webkit-box-sizing: border-box;\n            -moz-box-sizing: border-box;\n            box-sizing: border-box;\n            font-family: Helvetica, sans-serif;\n        }\n\n        table {\n            max-width: 500px;\n            padding: 0 10px;\n            background: #ffffff;\n        }\n\n        .content {\n            font-size: 16px;\n            margin-bottom: 25px;\n            padding-bottom: 5px;\n            border-bottom: 1px solid #EEEEEE;\n        }\n\n        .content p {\n            margin: 25px 0;\n        }\n\n        .footer {\n            font-size: 14px;\n            color: #888888;\n            font-style: italic;\n        }\n\n        .footer p {\n            margin: 0 0 2px 0;\n        }\n    </style>\n</head>\n<body>\n<table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            <div class=\"content\">\n                \n<h3>Presado Robson!</h3><p>Não conseguimos cobrar seu cartão referênte a fatura deste mês para sua assinatura CaféApp. Precisamos que você veja isso.</p><p>Acesse sua conta para atualizar seus dados de pagamento, você pode cadastrar outro cartão.</p><p>Se não fizer nada agora uma nova tentativa de cobrança será feita em 3 dias. Se não der certo, sua assinatura será cancelada :/</p><p>Qualquer dúvida estamos a disposição.</p>                <p>Atenciosamente, equipe CaféControl.</p>\n            </div>\n            <div class=\"footer\">\n                <p>CaféControl - Gerencie suas contas com o melhor café</p>\n                <p>SC 406 - Rod. Drº Antônio Luiz Moura Gonzaga                    , 3339, Bloco A, Sala 208</p>\n                <p>Florianópolis/SC - 88048-301</p>\n            </div>\n        </td>\n    </tr>\n</table>\n</body>\n</html>\n', 'cursos@upinside.com.br', 'Robson V. Leite', 'robsonvleite@gmail.com', 'Robson Leite', '2019-01-11 15:43:45', '2019-01-04 14:19:54', '2019-02-07 14:57:27');
INSERT INTO `mail_queue` VALUES(3, '[ASSINATURA CANCELADA] Sua conta CaféApp agora é FREE', '<!doctype html>\n<html>\n<head>\n    <meta name=\"viewport\" content=\"width=device-width\"/>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <title>[ASSINATURA CANCELADA] Sua conta CaféApp agora é FREE</title>\n    <style>\n        body {\n            -webkit-box-sizing: border-box;\n            -moz-box-sizing: border-box;\n            box-sizing: border-box;\n            font-family: Helvetica, sans-serif;\n        }\n\n        table {\n            max-width: 500px;\n            padding: 0 10px;\n            background: #ffffff;\n        }\n\n        .content {\n            font-size: 16px;\n            margin-bottom: 25px;\n            padding-bottom: 5px;\n            border-bottom: 1px solid #EEEEEE;\n        }\n\n        .content p {\n            margin: 25px 0;\n        }\n\n        .footer {\n            font-size: 14px;\n            color: #888888;\n            font-style: italic;\n        }\n\n        .footer p {\n            margin: 0 0 2px 0;\n        }\n    </style>\n</head>\n<body>\n<table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            <div class=\"content\">\n                \n<h3>Que pena Robson :/</h3><p>Tentamos efetuar mais uma cobrança para sua assinatura PRO hoje, mas sem sucesso.</p><p>Como essa já é uma segunda tentativa, infelismente sua assinatura foi cancelada. Mas calma, você pode assinar novamente a qualquer momento.</p><p>Continue controlando com os recursos FREE, e assim que quiser basta assinar novamente e voltar de onde parou :)</p>                <p>Atenciosamente, equipe CaféControl.</p>\n            </div>\n            <div class=\"footer\">\n                <p>CaféControl - Gerencie suas contas com o melhor café</p>\n                <p>SC 406 - Rod. Drº Antônio Luiz Moura Gonzaga                    , 3339, Bloco A, Sala 208</p>\n                <p>Florianópolis/SC - 88048-301</p>\n            </div>\n        </td>\n    </tr>\n</table>\n</body>\n</html>\n', 'cursos@upinside.com.br', 'Robson V. Leite', 'robsonvleite@gmail.com', 'Robson Leite', '2019-01-11 15:43:49', '2019-01-04 14:34:01', '2019-02-07 14:57:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `view` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notifications`
--

INSERT INTO `notifications` VALUES(1, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Robson V. Leite assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/4', 1, '2019-02-11 11:53:35', '2021-03-29 22:25:18');
INSERT INTO `notifications` VALUES(2, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Eleno Santos assinou o plano PRO de R$ 50,00/ano', 'https://www.localhost/fsphp/admin/control/subscription/5', 1, '2019-02-11 11:53:49', '2021-03-29 22:25:18');
INSERT INTO `notifications` VALUES(3, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Alexandre Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/6', 1, '2019-02-11 12:44:59', '2021-03-29 22:25:18');
INSERT INTO `notifications` VALUES(4, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Willian Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/7', 1, '2019-02-11 12:44:59', '2021-03-29 22:25:18');
INSERT INTO `notifications` VALUES(5, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Eduardo Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/8', 1, '2019-02-11 11:53:35', '2021-03-29 22:25:18');
INSERT INTO `notifications` VALUES(6, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Mateus Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/4', 1, '2019-02-11 12:44:59', '2021-03-29 22:25:18');
INSERT INTO `notifications` VALUES(7, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Felipe Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/5', 1, '2019-02-11 11:53:35', '2021-03-29 22:25:18');
INSERT INTO `notifications` VALUES(8, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Elton Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/6', 1, '2019-02-11 12:44:59', '2021-03-29 22:25:18');
INSERT INTO `notifications` VALUES(9, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Roddrigo Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/7', 1, '2019-02-11 12:44:59', '2021-03-29 22:25:18');
INSERT INTO `notifications` VALUES(10, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Fernanda Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/8', 1, '2019-02-11 12:44:59', '2021-03-29 22:25:18');
INSERT INTO `notifications` VALUES(11, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Bia Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/4', 1, '2019-02-11 11:53:35', '2021-03-29 22:25:36');
INSERT INTO `notifications` VALUES(12, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Maria Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/5', 1, '2019-02-11 11:53:35', '2021-03-29 22:25:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED DEFAULT NULL,
  `category` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uri` varchar(255) NOT NULL,
  `subtitle` text NOT NULL,
  `content` text NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'draft' COMMENT 'post, draft, trash ',
  `post_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` VALUES(32, NULL, 4, 'Correias', 'correias', 'dsdsd', '<p>sdsdsdsdsd</p>', 'images/2021/03/correias.jpg', '', 0, 'post', '2021-03-31 01:00:00', '2021-03-30 20:01:00', '2021-03-30 20:01:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `report_access`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `report_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `users` int(11) NOT NULL DEFAULT 1,
  `views` int(11) NOT NULL DEFAULT 1,
  `pages` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `report_access`
--

INSERT INTO `report_access` VALUES(1, 1, 2, 193, '2019-02-11 18:12:15', '2019-02-11 20:57:55');
INSERT INTO `report_access` VALUES(2, 1, 1, 32, '2019-02-14 16:37:35', '2019-02-14 16:39:23');
INSERT INTO `report_access` VALUES(3, 1, 1, 98, '2021-03-29 21:30:46', '2021-03-30 02:51:01');
INSERT INTO `report_access` VALUES(4, 68, 68, 1166, '2021-03-30 03:14:39', '2021-03-30 21:58:40');
INSERT INTO `report_access` VALUES(5, 14, 14, 551, '2021-03-31 13:17:33', '2021-03-31 22:10:15');
INSERT INTO `report_access` VALUES(6, 6, 6, 60, '2021-04-01 19:57:42', '2021-04-01 22:16:57');
INSERT INTO `report_access` VALUES(7, 6, 8, 925, '2021-04-02 13:26:50', '2021-04-03 02:58:58');
INSERT INTO `report_access` VALUES(8, 211, 213, 399, '2021-04-03 03:00:42', '2021-04-04 02:56:54');
INSERT INTO `report_access` VALUES(9, 429, 429, 467, '2021-04-04 03:02:09', '2021-04-05 02:58:30');
INSERT INTO `report_access` VALUES(10, 416, 420, 605, '2021-04-05 03:02:02', '2021-04-06 02:56:52');
INSERT INTO `report_access` VALUES(11, 496, 498, 523, '2021-04-06 03:03:00', '2021-04-07 02:56:39');
INSERT INTO `report_access` VALUES(12, 455, 455, 481, '2021-04-07 03:02:49', '2021-04-08 02:59:13');
INSERT INTO `report_access` VALUES(13, 260, 265, 333, '2021-04-08 03:03:16', '2021-04-09 02:46:50');
INSERT INTO `report_access` VALUES(14, 68, 70, 98, '2021-04-09 03:11:10', '2021-04-10 02:58:09');
INSERT INTO `report_access` VALUES(15, 36, 42, 411, '2021-04-10 03:09:44', '2021-04-11 00:48:06');
INSERT INTO `report_access` VALUES(16, 33, 34, 40, '2021-04-11 04:54:20', '2021-04-12 02:43:26');
INSERT INTO `report_access` VALUES(17, 83, 84, 144, '2021-04-12 03:09:39', '2021-04-13 02:58:31');
INSERT INTO `report_access` VALUES(18, 57, 58, 129, '2021-04-13 03:46:10', '2021-04-14 02:39:24');
INSERT INTO `report_access` VALUES(19, 32, 32, 41, '2021-04-14 03:59:57', '2021-04-15 02:53:33');
INSERT INTO `report_access` VALUES(20, 27, 27, 29, '2021-04-15 03:58:58', '2021-04-16 01:41:11');
INSERT INTO `report_access` VALUES(21, 47, 47, 57, '2021-04-16 03:19:22', '2021-04-17 02:07:49');
INSERT INTO `report_access` VALUES(22, 30, 30, 36, '2021-04-17 04:52:58', '2021-04-18 02:20:17');
INSERT INTO `report_access` VALUES(23, 26, 26, 27, '2021-04-18 05:04:48', '2021-04-19 02:50:42');
INSERT INTO `report_access` VALUES(24, 24, 24, 24, '2021-04-19 07:05:25', '2021-04-19 23:24:15');
INSERT INTO `report_access` VALUES(25, 36, 36, 37, '2021-04-20 03:08:46', '2021-04-21 01:52:19');
INSERT INTO `report_access` VALUES(26, 29, 29, 31, '2021-04-21 03:05:58', '2021-04-22 00:58:57');
INSERT INTO `report_access` VALUES(27, 30, 30, 30, '2021-04-22 03:07:45', '2021-04-23 00:46:32');
INSERT INTO `report_access` VALUES(28, 25, 25, 26, '2021-04-23 03:14:42', '2021-04-23 21:03:33');
INSERT INTO `report_access` VALUES(29, 13, 13, 16, '2021-04-24 04:56:06', '2021-04-25 02:50:17');
INSERT INTO `report_access` VALUES(30, 15, 15, 16, '2021-04-25 08:43:51', '2021-04-26 02:34:54');
INSERT INTO `report_access` VALUES(31, 10, 10, 10, '2021-04-26 06:49:44', '2021-04-27 01:13:25');
INSERT INTO `report_access` VALUES(32, 9, 9, 22, '2021-04-27 07:03:41', '2021-04-27 12:55:23');
INSERT INTO `report_access` VALUES(33, 2, 1, 520, '2021-06-04 12:25:22', '2021-06-04 19:21:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `report_online`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `report_online` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED DEFAULT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `pages` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `report_online`
--

INSERT INTO `report_online` VALUES(128, 52, '::1', '/ops/404', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 520, '2021-06-04 12:25:22', '2021-06-04 19:21:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicecategory`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `servicecategory` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uri` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'post',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicecategory`
--

INSERT INTO `servicecategory` VALUES(1, 'Tendas', 'tendas', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy', 'images/2021/06/tendas.jpg', 'post', '2021-03-29 23:27:02', '2021-06-01 18:34:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `services`
--
-- Criação: 04-Jun-2021 às 12:28
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` text NOT NULL,
  `content` text NOT NULL,
  `uri` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `specification` text DEFAULT NULL,
  `structure` text DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'draft',
  `icon` varchar(255) DEFAULT NULL,
  `post_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `services`
--

INSERT INTO `services` VALUES(1, 1, 1, 'TENDA PIRAMIDAL', 'teste', '<p>Produzidas em diferentes cores e tamanhos, nossas<br />tendas piramidais são ideais para todos os tipos de eventos, sejam eles de pequeno, médio ou grande porte.<br />Podem ser desenvolvidas em formatos especiais com<br />medidas adaptadas ao ambiente a ser coberto.</p>\n<p>Sua estrutura permite o encaixe de uma na outra, de<br />modo a cobrir áreas maiores tornando-as perfeitas para<br />atendender a eventos, feiras, pontos de venda,<br />workshops, exposições, armazenagem de produtos, maquinários entre outros. Fale com nossa equipe e conheça<br />hoje a tenda ideal para seu projeto.</p>', 'tenda-piramidal', 'images/2021/06/tenda-piramidal.jpg', NULL, NULL, 0, 'post', NULL, '2021-06-02 00:17:00', '2021-06-01 19:19:45', '2021-06-01 19:19:45', NULL);
INSERT INTO `services` VALUES(2, 1, 1, 'TENDA PIRAMIDAL 2', 'teste', '<p>Produzidas em diferentes cores e tamanhos, nossas<br />tendas piramidais são ideais para todos os tipos de eventos, sejam eles de pequeno, médio ou grande porte.<br />Podem ser desenvolvidas em formatos especiais com<br />medidas adaptadas ao ambiente a ser coberto.</p>\n<p>Sua estrutura permite o encaixe de uma na outra, de<br />modo a cobrir áreas maiores tornando-as perfeitas para<br />atendender a eventos, feiras, pontos de venda,<br />workshops, exposições, armazenagem de produtos, maquinários entre outros. Fale com nossa equipe e conheça<br />hoje a tenda ideal para seu projeto.</p>', 'tenda-piramidal-2', 'images/2021/06/tenda-piramidal-2.jpg', NULL, NULL, 0, 'post', NULL, '2021-06-02 00:21:00', '2021-06-01 19:22:49', '2021-06-01 19:22:49', NULL);
INSERT INTO `services` VALUES(3, 1, 1, 'TENDA PIRAMIDAL 3', 'teste', '<p>Produzidas em diferentes cores e tamanhos, nossas<br />tendas piramidais são ideais para todos os tipos de eventos, sejam eles de pequeno, médio ou grande porte.<br />Podem ser desenvolvidas em formatos especiais com<br />medidas adaptadas ao ambiente a ser coberto.</p>\n<p>Sua estrutura permite o encaixe de uma na outra, de<br />modo a cobrir áreas maiores tornando-as perfeitas para<br />atendender a eventos, feiras, pontos de venda,<br />workshops, exposições, armazenagem de produtos, maquinários entre outros. Fale com nossa equipe e conheça<br />hoje a tenda ideal para seu projeto.</p>', 'tenda-piramidal-3', 'images/2021/06/tenda-piramidal-3.jpg', NULL, NULL, 0, 'post', NULL, '2021-06-02 00:23:00', '2021-06-01 19:25:06', '2021-06-01 19:25:06', NULL);
INSERT INTO `services` VALUES(4, 1, 1, 'TENDA PIRAMIDA 4', 'tetse', '<p>Produzidas em diferentes cores e tamanhos, nossas<br />tendas piramidais são ideais para todos os tipos de eventos, sejam eles de pequeno, médio ou grande porte.<br />Podem ser desenvolvidas em formatos especiais com<br />medidas adaptadas ao ambiente a ser coberto.</p>\n<p>Sua estrutura permite o encaixe de uma na outra, de<br />modo a cobrir áreas maiores tornando-as perfeitas para<br />atendender a eventos, feiras, pontos de venda,<br />workshops, exposições, armazenagem de produtos, maquinários entre outros. Fale com nossa equipe e conheça<br />hoje a tenda ideal para seu projeto.</p>', 'tenda-piramida-4', 'images/2021/06/tenda-piramida-4.jpg', NULL, NULL, 0, 'post', NULL, '2021-06-02 00:25:00', '2021-06-01 19:27:13', '2021-06-01 19:27:14', NULL);
INSERT INTO `services` VALUES(5, 1, 1, 'TENDA PIRAMIDAL 5', 'teste', '<p>Produzidas em diferentes cores e tamanhos, nossas<br />tendas piramidais são ideais para todos os tipos de eventos, sejam eles de pequeno, médio ou grande porte.<br />Podem ser desenvolvidas em formatos especiais com<br />medidas adaptadas ao ambiente a ser coberto.</p>\n<p>Sua estrutura permite o encaixe de uma na outra, de<br />modo a cobrir áreas maiores tornando-as perfeitas para<br />atendender a eventos, feiras, pontos de venda,<br />workshops, exposições, armazenagem de produtos, maquinários entre outros. Fale com nossa equipe e conheça<br />hoje a tenda ideal para seu projeto.</p>', 'tenda-piramidal-5', 'images/2021/06/tenda-piramidal-5.jpg', NULL, NULL, 0, 'post', NULL, '2021-06-02 00:28:00', '2021-06-01 19:29:03', '2021-06-01 19:29:04', NULL);
INSERT INTO `services` VALUES(6, 1, 1, 'TENDA PIRAMIDAL 6', 'teste', '<p>Produzidas em diferentes cores e tamanhos, nossas<br />tendas piramidais são ideais para todos os tipos de eventos, sejam eles de pequeno, médio ou grande porte.<br />Podem ser desenvolvidas em formatos especiais com<br />medidas adaptadas ao ambiente a ser coberto.</p>\n<p>Sua estrutura permite o encaixe de uma na outra, de<br />modo a cobrir áreas maiores tornando-as perfeitas para<br />atendender a eventos, feiras, pontos de venda,<br />workshops, exposições, armazenagem de produtos, maquinários entre outros. Fale com nossa equipe e conheça<br />hoje a tenda ideal para seu projeto.</p>', 'tenda-piramidal-6', 'images/2021/06/tenda-piramidal-6.jpg', NULL, NULL, 0, 'post', NULL, '2021-06-02 00:29:00', '2021-06-01 19:30:51', '2021-06-01 19:30:52', NULL);
INSERT INTO `services` VALUES(7, 1, 1, 'TENDA PIRAMIDAL 7', 'teste', '<p>Produzidas em diferentes cores e tamanhos, nossas<br />tendas piramidais são ideais para todos os tipos de eventos, sejam eles de pequeno, médio ou grande porte.<br />Podem ser desenvolvidas em formatos especiais com<br />medidas adaptadas ao ambiente a ser coberto.</p>\n<p>Sua estrutura permite o encaixe de uma na outra, de<br />modo a cobrir áreas maiores tornando-as perfeitas para<br />atendender a eventos, feiras, pontos de venda,<br />workshops, exposições, armazenagem de produtos, maquinários entre outros. Fale com nossa equipe e conheça<br />hoje a tenda ideal para seu projeto.</p>', 'tenda-piramidal-7', 'images/2021/06/tenda-piramidal-7.jpg', NULL, NULL, 0, 'post', NULL, '2021-06-02 00:31:00', '2021-06-01 19:32:31', '2021-06-01 19:32:31', NULL);
INSERT INTO `services` VALUES(8, 1, 1, 'TENDA PIRAMIDAL 8', 'teste', '<p>Produzidas em diferentes cores e tamanhos, nossas<br />tendas piramidais são ideais para todos os tipos de eventos, sejam eles de pequeno, médio ou grande porte.<br />Podem ser desenvolvidas em formatos especiais com<br />medidas adaptadas ao ambiente a ser coberto.</p>\n<p>Sua estrutura permite o encaixe de uma na outra, de<br />modo a cobrir áreas maiores tornando-as perfeitas para<br />atendender a eventos, feiras, pontos de venda,<br />workshops, exposições, armazenagem de produtos, maquinários entre outros. Fale com nossa equipe e conheça<br />hoje a tenda ideal para seu projeto.</p>', 'tenda-piramidal-8', 'images/2021/06/tenda-piramidal-8.jpg', NULL, NULL, 0, 'post', NULL, '2021-06-02 00:33:00', '2021-06-01 19:35:05', '2021-06-01 19:35:06', NULL);
INSERT INTO `services` VALUES(9, 1, 1, 'TENDA PIRAMIDAL 9', 'teste', '<p>Produzidas em diferentes cores e tamanhos, nossas<br />tendas piramidais são ideais para todos os tipos de eventos, sejam eles de pequeno, médio ou grande porte.<br />Podem ser desenvolvidas em formatos especiais com<br />medidas adaptadas ao ambiente a ser coberto.</p>\n<p>Sua estrutura permite o encaixe de uma na outra, de<br />modo a cobrir áreas maiores tornando-as perfeitas para<br />atendender a eventos, feiras, pontos de venda,<br />workshops, exposições, armazenagem de produtos, maquinários entre outros. Fale com nossa equipe e conheça<br />hoje a tenda ideal para seu projeto.</p>', 'tenda-piramidal-9', 'images/2021/06/tenda-piramidal-9.jpg', NULL, NULL, 0, 'post', NULL, '2021-06-02 00:35:00', '2021-06-01 19:36:45', '2021-06-01 19:36:46', NULL);
INSERT INTO `services` VALUES(15, 1, 1, 'TENDA CHAPÉU DE BRUXA', 'teste', '<p>Produzidas em diferentes cores e tamanhos, nossas<br />tendas piramidais são ideais para todos os tipos de eventos, sejam eles de pequeno, médio ou grande porte.<br />Podem ser desenvolvidas em formatos especiais com<br />medidas adaptadas ao ambiente a ser coberto.</p>\n<p>Sua estrutura permite o encaixe de uma na outra, de<br />modo a cobrir áreas maiores tornando-as perfeitas para<br />atendender a eventos, feiras, pontos de venda,<br />workshops, exposições, armazenagem de produtos, maquinários entre outros. Fale com nossa equipe e conheça<br />hoje a tenda ideal para seu projeto.</p>', 'tenda-chapeu-de-bruxa', 'images/2021/06/tenda-chapeu-de-bruxa.png', 'Cobertura: Lona PVC – material extra durável, aditivado contra raios ultravioletas (UV) e oxidação, contém blackout ( impede 40% do calor ), não propagador de chamas, anti-mofo, anti-ressecamento e impermeável. Junção com rádio frequência e reforços nos pontos de maior desgaste, garantindo maior durabilidade. Durabilidade média de 5 anos com exposição ao sol e chuva.', 'Elaborada com sistema de encaixe, unidas com parafusos e conexões em aço pelo sistema MIG de soldagem, tratamento antiferruginoso ( galvanização ) e fixação por cordas ou cabos.', 0, 'post', 'fas fa-campground', '2021-06-04 01:11:00', '2021-06-03 20:13:06', '2021-06-04 12:40:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `site`
--
-- Criação: 02-Jun-2021 às 14:22
--

CREATE TABLE `site` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `phone` varchar(45) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `phone_wp` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `meta_tag` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `site`
--

INSERT INTO `site` VALUES(1, 'Site Goiânia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '(62) 991346-029', 'Mensagem de Contato', '62991346029', 'contato@site.com.br', 'https://facebook.com/username', 'https://instagram.com/username', '© 2021 - Goiânia Tendas | Desenvolvido por Gabriela Rabelo', 'lorem, ipsum', '2021-03-30 02:41:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `size`
--
-- Criação: 03-Jun-2021 às 19:02
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `idpost` int(11) NOT NULL,
  `size` varchar(80) NOT NULL,
  `color` varchar(80) NOT NULL,
  `weight` varchar(80) NOT NULL,
  `persons` varchar(80) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `size`
--

INSERT INTO `size` VALUES(8, 15, '4x5', '#21c6fd', '50kg', '8', 'images/2021/06/4x5.png', '2021-06-03 20:15:17', '2021-06-03 20:15:17');
INSERT INTO `size` VALUES(9, 15, '5x7', '#e47207', '68kg', '10', 'images/2021/06/5x7.jpg', '2021-06-03 20:16:51', '2021-06-03 20:16:51');
INSERT INTO `size` VALUES(10, 15, '5x9', '#017e21', '76kg', '12', 'images/2021/06/5x9.png', '2021-06-03 20:18:23', '2021-06-03 20:18:23');
INSERT INTO `size` VALUES(11, 15, '6x0', '#ff1a1a', '78kg', '16', 'images/2021/06/6x0.jpg', '2021-06-03 20:19:35', '2021-06-03 20:19:35');
INSERT INTO `size` VALUES(12, 15, '7x8', '#fdf626', '80kg', '20', 'images/2021/06/7x8.jpg', '2021-06-03 20:21:02', '2021-06-03 20:21:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `slide`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'post',
  `post_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `slide`
--

INSERT INTO `slide` VALUES(5, 'TENDA PIRAMIDAL', 'images/2021/06/tenda-piramidal-1622581852.jpg', 'post', '2021-06-02 02:09:00', '2021-06-01 21:10:54', '2021-06-01 21:10:54');
INSERT INTO `slide` VALUES(6, 'TENDA', 'images/2021/06/tenda.jpg', 'post', '2021-06-02 02:11:00', '2021-06-01 21:12:04', '2021-06-01 21:12:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategory`
--
-- Criação: 01-Jun-2021 às 18:57
-- Última actualização: 02-Jun-2021 às 13:39
-- Última verificação: 02-Jun-2021 às 12:54
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `idcategory` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cover` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'post' COMMENT 'post, page, etc',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `subcategory`
--

INSERT INTO `subcategory` VALUES(1, 1, 'Tendas teste', 'tendas-teste', 'teste', 'images/2021/06/tendas-teste.jpg', 'post', '2021-06-01 18:59:29', '2021-06-01 18:59:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--
-- Criação: 01-Jun-2021 às 13:27
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT 1,
  `forget` varchar(255) DEFAULT NULL,
  `genre` varchar(10) DEFAULT NULL,
  `datebirth` date DEFAULT NULL,
  `document` varchar(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'registered' COMMENT 'registered, confirmed',
  `phone1` varchar(45) DEFAULT NULL,
  `phone2` varchar(45) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` VALUES(52, 'Suporte', 'Técnico', 'suporte@gmail.com.br', '$2y$10$M0Aya8v4NZAjcke/IltKVubppPFkjjvrPVQ7Hmy3m3NPQHxIjSEtS', 5, NULL, 'male', '1995-07-08', '04398141178', 'images/2021/04/suporte-newtile.png', 'confirmed', '000000000', '000000000', 'https://facebook.com/username', 'https://instagram.com/username', '2021-03-30 03:04:53', '2021-06-04 02:39:29');
INSERT INTO `users` VALUES(53, 'Ademir', 'Costa', 'a.costaa@hotmail.com', '$2y$10$yHljZ70blrodSlNlkYSHGej9VU0x.WXFdEEckSKMh9FUC2HvdOKSK', 5, NULL, 'male', '2021-04-10', '', NULL, 'confirmed', '', '', '', '', '2021-04-10 19:07:02', '2021-04-10 19:32:49');
INSERT INTO `users` VALUES(54, 'JOAO ', 'CABRAL', 'jpcabral1992@gmail.com', '$2y$10$OQnLrmOd4Pw4DAod4vyicOXs6.zvXFEtlmFozuj7VyTNeZ7LyVnH2', 5, NULL, 'male', NULL, '', NULL, 'confirmed', '', '', '', '', '2021-04-10 19:07:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `work`
--
-- Criação: 02-Jun-2021 às 18:33
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(70) NOT NULL,
  `state` varchar(80) NOT NULL,
  `city` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `anexo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `work`
--

INSERT INTO `work` VALUES(2, 'Railan Bernardo', 'suporte@gmail.com.br', 'Rua 9', '75370-000', 'Goiás', 'Goianira', 'rtgfg', 'files/2021/06/railan-bernardo-1622770251.pdf', '2021-06-04 01:30:51');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `about_gallery`
--
ALTER TABLE `about_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addr_user` (`user_id`);

--
-- Índices para tabela `app_categories`
--
ALTER TABLE `app_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_of` (`sub_of`);

--
-- Índices para tabela `app_credit_cards`
--
ALTER TABLE `app_credit_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit_cards_user` (`user_id`);

--
-- Índices para tabela `app_invoices`
--
ALTER TABLE `app_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_user` (`user_id`),
  ADD KEY `app_wallet` (`wallet_id`),
  ADD KEY `app_category` (`category_id`),
  ADD KEY `app_invoice` (`invoice_of`);

--
-- Índices para tabela `app_orders`
--
ALTER TABLE `app_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user` (`user_id`),
  ADD KEY `orders_credit_card` (`card_id`),
  ADD KEY `orders_subscription` (`subscription_id`);

--
-- Índices para tabela `app_plans`
--
ALTER TABLE `app_plans`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_subscriptions`
--
ALTER TABLE `app_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_user` (`user_id`),
  ADD KEY `subscription_card` (`card_id`),
  ADD KEY `subscription_plan` (`plan_id`);

--
-- Índices para tabela `app_wallets`
--
ALTER TABLE `app_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_user` (`user_id`);

--
-- Índices para tabela `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faq_channels`
--
ALTER TABLE `faq_channels`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Índices para tabela `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `gallery_service`
--
ALTER TABLE `gallery_service`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mail_queue`
--
ALTER TABLE `mail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category`),
  ADD KEY `user_id` (`author`);
ALTER TABLE `posts` ADD FULLTEXT KEY `full_text` (`title`,`subtitle`);

--
-- Índices para tabela `report_access`
--
ALTER TABLE `report_access`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `report_online`
--
ALTER TABLE `report_online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servicecategory`
--
ALTER TABLE `servicecategory`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `users` ADD FULLTEXT KEY `full_text` (`first_name`,`last_name`,`email`);

--
-- Índices para tabela `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `about_gallery`
--
ALTER TABLE `about_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `app_categories`
--
ALTER TABLE `app_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `app_credit_cards`
--
ALTER TABLE `app_credit_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `app_invoices`
--
ALTER TABLE `app_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `app_orders`
--
ALTER TABLE `app_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `app_plans`
--
ALTER TABLE `app_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `app_subscriptions`
--
ALTER TABLE `app_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `app_wallets`
--
ALTER TABLE `app_wallets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `faq_channels`
--
ALTER TABLE `faq_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `gallery_service`
--
ALTER TABLE `gallery_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `mail_queue`
--
ALTER TABLE `mail_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `report_access`
--
ALTER TABLE `report_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `report_online`
--
ALTER TABLE `report_online`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de tabela `servicecategory`
--
ALTER TABLE `servicecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `site`
--
ALTER TABLE `site`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `app_categories`
--
ALTER TABLE `app_categories`
  ADD CONSTRAINT `sub_of` FOREIGN KEY (`sub_of`) REFERENCES `app_categories` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `app_credit_cards`
--
ALTER TABLE `app_credit_cards`
  ADD CONSTRAINT `credit_cards_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `app_invoices`
--
ALTER TABLE `app_invoices`
  ADD CONSTRAINT `app_category` FOREIGN KEY (`category_id`) REFERENCES `app_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `app_invoice` FOREIGN KEY (`invoice_of`) REFERENCES `app_invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `app_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `app_wallet` FOREIGN KEY (`wallet_id`) REFERENCES `app_wallets` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `app_orders`
--
ALTER TABLE `app_orders`
  ADD CONSTRAINT `orders_credit_card` FOREIGN KEY (`card_id`) REFERENCES `app_credit_cards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_subscription` FOREIGN KEY (`subscription_id`) REFERENCES `app_subscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `app_subscriptions`
--
ALTER TABLE `app_subscriptions`
  ADD CONSTRAINT `subscription_card` FOREIGN KEY (`card_id`) REFERENCES `app_credit_cards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscription_plan` FOREIGN KEY (`plan_id`) REFERENCES `app_plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscription_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `app_wallets`
--
ALTER TABLE `app_wallets`
  ADD CONSTRAINT `wallet_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD CONSTRAINT `channel_id` FOREIGN KEY (`channel_id`) REFERENCES `faq_channels` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE SET NULL;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata para tabela about
--

--
-- Metadata para tabela about_gallery
--

--
-- Metadata para tabela address
--

--
-- Metadata para tabela app_categories
--

--
-- Metadata para tabela app_credit_cards
--

--
-- Metadata para tabela app_invoices
--

--
-- Metadata para tabela app_orders
--

--
-- Metadata para tabela app_plans
--

--
-- Metadata para tabela app_subscriptions
--

--
-- Metadata para tabela app_wallets
--

--
-- Metadata para tabela budget
--

--
-- Metadata para tabela categories
--

--
-- Metadata para tabela contact
--

--
-- Metadata para tabela faq_channels
--

--
-- Metadata para tabela faq_questions
--

--
-- Metadata para tabela gallery
--

--
-- Metadata para tabela gallery_service
--

--
-- Metadata para tabela mail_queue
--

--
-- Metadata para tabela notifications
--

--
-- Metadata para tabela posts
--

--
-- Metadata para tabela report_access
--

--
-- Metadata para tabela report_online
--

--
-- Metadata para tabela servicecategory
--

--
-- Metadata para tabela services
--

--
-- Metadata para tabela site
--

--
-- Metadata para tabela size
--

--
-- Metadata para tabela slide
--

--
-- Metadata para tabela subcategory
--

--
-- Metadata para tabela users
--

--
-- Metadata para tabela work
--

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` VALUES('root', 'db_app', 'work', '{\"CREATE_TIME\":\"2021-06-01 18:24:49\"}', '2021-06-02 18:21:03');

--
-- Metadata para o banco de dados db_app
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
