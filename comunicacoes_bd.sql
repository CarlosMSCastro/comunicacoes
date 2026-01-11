-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Jan-2026 às 00:49
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `comunicacoes_bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cabecalhos`
--

CREATE TABLE `cabecalhos` (
  `id` int(11) NOT NULL,
  `tipo_pagina` varchar(50) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `ordem` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cabecalhos`
--

INSERT INTO `cabecalhos` (`id`, `tipo_pagina`, `imagem`, `ativo`, `ordem`) VALUES
(1, 'empresa', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_empresa.png', 1, 1),
(2, 'destaques', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_destaque.png', 1, 1),
(3, 'noticias e eventos', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_noticias_e_eventos.png', 1, 1),
(4, 'solucoes', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_solucoes.png', 1, 1),
(5, 'inovacoes e tecnologia', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_inovacao_e_tecnologia.png', 1, 1),
(6, 'noticias e evento', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_noticia.png', 1, 1),
(7, 'contactos', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_contactos.png', 1, 1),
(8, 'parceiros', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_parceiros.png', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carousel2`
--

CREATE TABLE `carousel2` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `texto` text DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `pagina_url` varchar(255) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `carousel2`
--

INSERT INTO `carousel2` (`id`, `titulo`, `texto`, `data`, `imagem`, `pagina_url`, `ordem`, `ativo`) VALUES
(1, 'Data Center - Tecnologia e Inovação para 2022', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, comodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna set libero.&nbsp;</p><p>Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio. Vivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,</p><p>&nbsp;</p><p>&nbsp;</p><figure class=\"image\"><img style=\"aspect-ratio:800/480;\" src=\"/comunicacoes/backoffice/uploads/img_69642dca79dae0.65637217.jpg\" width=\"800\" height=\"480\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', '2025-12-02', 'backoffice/uploads/destaque_1.jpg', 'destaque.php?id=1', 1, 1),
(3, 'COTEC e TA Comunicações', '<p>Ao apoiar a COTEC Portugal na implementação da sua infraestrutura tecnológica, sentimos que também nós estamos a contribuir para o fortalecimento do ecossistema de inovação da economia portuguesa.<img class=\"image_resized\" style=\"aspect-ratio:535/290;width:1060px;\" src=\"https://tacomunicacoes.pt//public/uploads/noticias/Logo%20cotec.jpg\" alt=\"\" width=\"535\" height=\"290\"></p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:justify;\">&nbsp;</p>', '2015-12-04', 'backoffice/uploads/Logo cotec.jpg', 'destaque.php?id=3', 3, 1),
(4, 'AON e TA Comunicações', '<p style=\"text-align:center;\"><img src=\"https://tacomunicacoes.pt//public/uploads/solucoes/518297498_10238744454096290_7155686600767182775_n.jpg\" alt=\"\" width=\"535\" height=\"437\"></p><p style=\"text-align:justify;\">A AON está no negócio das melhores decisões — e a TA ao apoiar na implementação da sua infraestrutura tecnológica é para nós um motivo de orgulho.<br>Esta colaboração representa um passo importante na nossa missão de entregar soluções robustas, escaláveis e alinhadas com as exigências de um mercado em constante evolução.</p><p><br>&nbsp;</p>', '2011-03-05', 'backoffice/uploads/AONfoto.jpg', 'destaque.php?id=4', 4, 1),
(5, 'Case Study TA Comunicações, Aruba HPE e Feels Like Home', '<p style=\"text-align:justify;\"><img src=\"https://tacomunicacoes.pt//public/uploads/noticias/memoria_lx%20(002).jpg\" alt=\"\" width=\"535\" height=\"378\"></p><p style=\"text-align:justify;\">É, mais uma vez, o resultado de uma visão clara das necessidades dos nossos Clientes e da dedicação de uma Equipa comprometida em prestar um serviço de excelência.</p><p style=\"text-align:justify;\"><a href=\"https://www.itchannel.pt/news/redes-and-telecom/hpe-aruba-networking-e-ta-comunicacoes-melhoram-experiencia-dos-hospedes-do-grupo-flh-com-rede-robusta-e-escalavel\"><u>Veja a noticia completa aqui pelo IT Channel</u></a></p><p style=\"text-align:justify;\">Agradecemos a confiança...</p>', '2022-05-10', 'backoffice/uploads/memoria.jpg', 'destaque.php?id=5', 5, 1),
(6, 'TA e The MN 56 Hotel', '<p style=\"text-align:center;\"><img src=\"https://tacomunicacoes.pt//public/uploads/noticias/1755621260905.jpg\" alt=\"\" width=\"535\" height=\"357\"></p><p style=\"text-align:center;\">É com muito orgulho que vimos uma vez mais o nosso trabalho a ser reconhecido, alcançando mais uma meta de excelência, com a implementação da rede WIFI Aruba HPE, Servidor de comunicações Mitel e audiovisuais Samsung no charmoso em Lagos.</p><p style=\"text-align:center;\"><img src=\"https://tacomunicacoes.pt//public/uploads/noticias/1755621260537.jpg\" alt=\"\" width=\"401\" height=\"535\"></p><p style=\"text-align:justify;\">É, mais uma vez, o resultado de uma visão clara das necessidades dos nossos Clientes e da dedicação de uma Equipa comprometida em prestar um serviço de excelência.<br>Agradecemos a confiança.</p>', '2008-11-11', 'backoffice/uploads/mn56.jpg', 'destaque.php?id=6', 6, 1),
(7, 'Lorem ipsum - dolor sit amet, consectetur adis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, commodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna et libero. Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio.\r\n\r\nVivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,', '03/07/2009', 'imagens/carousel2/destaque_1.jpg', 'destaque.php?id=7', 7, 0),
(8, 'Lorem ipsum - dolor sit amet, consectetur adis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, commodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna et libero. Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio.\r\n\r\nVivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,', '12/05/2012', 'imagens/carousel2/destaque_2.jpg', 'destaque.php?id=8', 8, 0),
(9, 'Lorem ipsum - dolor sit amet, consectetur adis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, commodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna et libero. Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio.\r\n\r\nVivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,', '21/08/2015', 'imagens/carousel2/destaque_3.jpg', 'destaque.php?id=9', 9, 0),
(10, 'Lorem ipsum - dolor sit amet, consectetur adis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, commodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna et libero. Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio.\r\n\r\nVivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,', '05/11/2018', 'imagens/carousel2/destaque_4.jpg', 'destaque.php?id=10', 10, 0),
(11, 'Lorem ipsum - dolor sit amet, consectetur adis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, commodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna et libero. Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio.\r\n\r\nVivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,', '14/02/2020', 'imagens/carousel2/destaque_5.jpg', 'destaque.php?id=11', 11, 0),
(12, 'Lorem ipsum - dolor sit amet, consectetur adis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, commodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna et libero. Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio.\r\n\r\nVivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,', '30/06/2023', 'imagens/carousel2/destaque_6.jpg', 'destaque.php?id=12', 12, 0),
(13, 'Lorem ipsum - dolor sit amet, consectetur adis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, commodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna et libero. Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio.\r\n\r\nVivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,', '17/03/2010', 'imagens/carousel2/destaque_1.jpg', 'destaque.php?id=13', 13, 0),
(14, 'Lorem ipsum - dolor sit amet, consectetur adis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, commodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna et libero. Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio.\r\n\r\nVivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,', '22/09/2013', 'imagens/carousel2/destaque_2.jpg', 'destaque.php?id=14', 14, 0),
(15, 'Lorem ipsum - dolor sit amet, consectetur adis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, commodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna et libero. Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio.\r\n\r\nVivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,', '09/06/2017', 'imagens/carousel2/destaque_3.jpg', 'destaque.php?id=15', 15, 0),
(16, 'Lorem ipsum - dolor sit amet, consectetur adis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi id ante volutpat, commodo dolor eu, ornare leo. Integer efficitur, lacus sit amet pellentesque egestas, sapien massa tristique turpis, ac faucibus augue magna et libero. Quisque vel laoreet ipsum. Sed ac eleifend justo, maximus luctus turpis. Duis at neque nec est semper cursus. Quisque quis felis eu mi congue mollis eu at odio.\r\n\r\nVivamus aliquam nisi ut mauris luctus, eget suscipit lorem congue. Morbi ac ex quam. Aenean dapibus nibh vel nisi hendrerit venenatis a vitae nunc. In hac habitasse platea dictumst. Curabitur eleifend sagittis arcu,', '05/12/2021', 'imagens/carousel2/destaque_4.jpg', 'destaque.php?id=16', 16, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carousel_topo`
--

CREATE TABLE `carousel_topo` (
  `id` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `ordem` int(11) NOT NULL DEFAULT 0,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `data_insercao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `carousel_topo`
--

INSERT INTO `carousel_topo` (`id`, `imagem`, `ordem`, `ativo`, `data_insercao`) VALUES
(1, 'backoffice/uploads/cabecalho_home.png', 1, 1, '2026-01-09 01:35:43'),
(2, 'backoffice/uploads/cabecalho_destaque.png', 2, 1, '2026-01-09 01:35:43'),
(3, 'backoffice/uploads/cabecalho_contactos.png', 3, 1, '2026-01-09 01:35:43'),
(4, 'backoffice/uploads/cabecalho_noticias_e_eventos.png', 4, 1, '2026-01-09 01:35:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `colaboradores`
--

CREATE TABLE `colaboradores` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_ultimo_acesso` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `colaboradores`
--

INSERT INTO `colaboradores` (`id`, `username`, `password`, `nome`, `data_ultimo_acesso`) VALUES
(1, 'admin', '$2y$10$ZYjApfjjUBens8/zaW/0y.Sv/e0SvYIXlUhj3ybxddP0sMEwFs3Qm', 'Administrador', '22:32:19 - 11/01/2026');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `morada` varchar(255) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nif` varchar(50) DEFAULT NULL,
  `gps` varchar(100) DEFAULT NULL,
  `iframe_mapa` text NOT NULL,
  `gps_iframe_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `contactos`
--

INSERT INTO `contactos` (`id`, `morada`, `telefone`, `fax`, `email`, `nif`, `gps`, `iframe_mapa`, `gps_iframe_url`) VALUES
(1, 'Rua da Felicidade\r\nEscritório 1\r\n1234-567 Lisboa', '(+351) 212 345 678', '(+351) 218 765 432', 'geral@comunicacoes.pt', '111 222 333', '+11° 22\' 33.44\", -5° 66\' 77.88\"', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d1559.9880050579154!2d-9.335241447003197!3d38.71287539603649!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMzjCsDQyJzQ2LjkiTiA5wrAyMCcwNS44Ilc!5e0!3m2!1spt-PT!2spt!4v1767904586443!5m2!1spt-PT!2spt\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactos_form`
--

CREATE TABLE `contactos_form` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `receber_copia` tinyint(1) DEFAULT 0,
  `data_envio` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `contactos_form`
--

INSERT INTO `contactos_form` (`id`, `nome`, `email`, `telefone`, `assunto`, `mensagem`, `receber_copia`, `data_envio`) VALUES
(1, 'CarlosCastro', 'CARLOSCASTRO96@LIVE.COM.PT', '911074815', 'Primeiro Teste', 'Olá Mundo!', 0, '2026-01-08 18:47:13'),
(2, 'CarlosCastro', 'CARLOSCASTRO96@LIVE.COM.PT', '911074815', 'Primeiro Teste', 'Olá Mundo!', 0, '2026-01-08 18:51:23'),
(3, 'João Castro', 'joaocastroteste@mail.com', '911023332', 'Testar esta sht', 'Ola World', 1, '2026-01-08 18:52:20'),
(4, 'Deolinda Castro', 'deolinda.castro@mail.com', '1233212456', 'Teste2', 'Teste', 1, '2026-01-08 18:54:58'),
(5, 'Deolinda Castro', 'deolinda.castro@mail.com', '1233212456', 'Teste2', 'Teste', 1, '2026-01-08 18:55:58'),
(6, 'Cristiano Ronaldo', 'cristiano.ronaldo@mail.com', '999222433', 'Oblha', 'SIIIIIIIIU', 1, '2026-01-08 19:15:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `footer_carousel`
--

CREATE TABLE `footer_carousel` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `texto` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `ordem` int(11) DEFAULT 1,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `pagina_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `footer_carousel`
--

INSERT INTO `footer_carousel` (`id`, `titulo`, `data`, `texto`, `imagem`, `ordem`, `ativo`, `pagina_url`) VALUES
(1, 'Conferência — Desafios tecnológicos para a próxima década.', '2018-11-12', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.<img src=\"http://localhost/comunicacoes/backoffice/uploads/1.jpg\"></p>', 'backoffice/uploads/1.jpg', 1, 1, 'noticia.php?id=1'),
(2, 'Conferência — Desafios tecnológicos para a próxima década.', '2015-05-05', '<p><img class=\"image_resized\" style=\"aspect-ratio:2176/1428;width:367px;\" src=\"http://localhost/comunicacoes/backoffice/uploads/2.png\" width=\"2176\" height=\"1428\"></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.</p>', 'backoffice/uploads/2.png', 2, 1, 'noticia.php?id=2'),
(3, 'Conferência — Desafios tecnológicos para a próxima década.', '2021-05-12', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.<img src=\"http://localhost/comunicacoes/backoffice/uploads/inovacao_6.jpg\"></p>', 'backoffice/uploads/inovacao_6.jpg', 3, 1, 'noticia.php?id=3'),
(4, 'Conferência — Desafios tecnológicos para a próxima década.', '2021-03-12', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget rutrum nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.<img src=\"http://localhost/comunicacoes/imagens/carousel3/4.png\"></p>', 'imagens/carousel3/4.png', 4, 1, 'noticia.php?id=4'),
(5, 'Mitel Next 2024 Barcelona', '2014-11-12', '<p style=\"text-align:justify;\">Mitel Next 2024 Barcelona&nbsp;</p><p style=\"text-align:justify;\"><img src=\"https://tacomunicacoes.pt//public/uploads/noticias/WhatsApp%20Image%202024-05-28%20at%2021-28-15.jpg\" alt=\"\" width=\"357\" height=\"476\"></p>', 'backoffice/uploads/Mitelnext.jpg', 5, 1, 'noticia.php?id=5'),
(6, 'Merck Portugal Convida João Neto para Evento', '2022-02-21', '<p style=\"text-align:justify;\">O Diretor-Geral da TA Comunicações participou, como convidado especial, no evento corporativo da Merck Portugal. Teve a oportunidade de partilhar a sua experiência pessoal, profissional e desportiva, onde procura a auto-superação constante. À semelhança da multinacional que o acolheu no evento \"O Poder do Impacto\", partilha princípios como a resiliência, o foco nos objetivos traçados, espírito competitivo e liderança. É desta forma que João Neto inspira as equipas com quem trabalha. O desejo e curiosidade de provar o impossível, tomam forma através do cume de uma montanha em regiões inóspitas ou através de fórmulas que visam o desenvolvimento da sociedade humana.</p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:justify;\"><img src=\"https://masterprohosting.com/ta_comunicacoes//public/uploads/noticias/Jo%C3%A3o_Netto_Merck_Portugal.jpg\" alt=\"joao-neto-merck-portugal-o-poder-do-impacto\" width=\"757\" height=\"504\"></p><p style=\"text-align:justify;\"><img src=\"https://masterprohosting.com/ta_comunicacoes//public/uploads/noticias/Jo%C3%A3o%20Neto%20Merck%20TA%20Comunica%C3%A7%C3%B5es.jpg\" alt=\"joao-neto-ultramaratonista\" width=\"757\" height=\"504\"></p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:justify;\">&nbsp;</p>', 'backoffice/uploads/Joao_Netto_Merck_Portugal.jpg', 6, 1, 'noticia.php?id=6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `footer_navbar`
--

CREATE TABLE `footer_navbar` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT '#',
  `ordem` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `footer_navbar`
--

INSERT INTO `footer_navbar` (`id`, `titulo`, `url`, `ordem`) VALUES
(1, 'Empresa', '#', 1),
(2, 'Destaques', 'destaques.php', 2),
(3, 'Notícias e Eventos', 'noticias.php', 3),
(4, 'Soluções', '#', 4),
(5, 'Inovação e Tecnologia', '#', 5),
(6, 'Os Nossos Parceiros', 'parceiros.php', 6),
(7, 'Contactos', 'contactos.php', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `headers`
--

CREATE TABLE `headers` (
  `id` int(11) NOT NULL,
  `tipo_pagina` varchar(50) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `ordem` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `headers`
--

INSERT INTO `headers` (`id`, `tipo_pagina`, `imagem`, `ativo`, `ordem`) VALUES
(1, 'empresa', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_empresa.png', 1, 1),
(2, 'destaques', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_destaque.png', 1, 1),
(3, 'noticias e eventos', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_noticias_e_eventos.png', 1, 1),
(4, 'solucoes', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_solucoes.png', 1, 1),
(5, 'inovacoes e tecnologia', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_inovacao_e_tecnologia.png', 1, 1),
(6, 'noticias e evento', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_noticia.png', 1, 1),
(7, 'contactos', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_contactos.png', 1, 1),
(8, 'parceiros', 'http://localhost/comunicacoes/backoffice/uploads/cabecalho_parceiros.png', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_conteudo`
--

CREATE TABLE `home_conteudo` (
  `id` int(11) NOT NULL,
  `titulo_h1` varchar(255) NOT NULL,
  `titulo_h2` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `home_conteudo`
--

INSERT INTO `home_conteudo` (`id`, `titulo_h1`, `titulo_h2`, `texto`) VALUES
(1, 'Bem-vindo à Comunicações', 'O seu Parceiro Tecnológico de Excelência', '<p>A TA Comunicações é uma empresa especializada em fornecer soluções integradas de internet e comunicações, que endereça clientes do segmento Corporate. Há mais de 28 anos que trabalha arduamente no sentido de se consolidar enquanto parceiro tecnológico, potenciando a presença dos seus clientes no mercado, através de soluções personalizadas que alavancam as receitas e reduzem os custos .Com representação das melhores marcas e vasta experiência, posiciona-se como um fornecedor global de telecomunicações, comprometido com a prestação de um serviço de excelência, por via de uma estratégia assente na formação contínua dos seus colaboradores. A TA Comunicações privilegia as relações assentes na confiança e no conhecimento, permitindo uma gestão e apoio ao cliente que se diferencia no mercado tecnológico.</p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `navbar`
--

CREATE TABLE `navbar` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT '#',
  `pai_id` int(11) DEFAULT NULL,
  `ordem` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `navbar`
--

INSERT INTO `navbar` (`id`, `titulo`, `url`, `pai_id`, `ordem`) VALUES
(1, 'Empresa', '#', NULL, 1),
(2, 'Quem Somos', 'empresa.php?id=2', 1, 1),
(3, 'Historial', 'empresa.php?id=3', 1, 2),
(4, 'Missão, Visão e Valores', 'empresa.php?id=4', 1, 3),
(5, 'Prémios e Certificações', 'empresa.php?id=5', 1, 4),
(6, 'Destaques', 'destaques.php', NULL, 2),
(7, 'Notícias e Eventos', 'noticias.php', NULL, 3),
(8, 'Soluções', '#', NULL, 4),
(9, 'Telecomunicações', 'solucoes.php?id=9', 8, 1),
(10, 'Televisões e Audiovisuais', 'solucoes.php?id=10', 8, 2),
(11, 'Informática e Redes', 'solucoes.php?id=11', 8, 3),
(12, 'Data Center e Cibersegurança', 'solucoes.php?id=12', 8, 4),
(13, 'Internet of Things', 'solucoes.php?id=13', 8, 5),
(14, 'Assistentes Virtuais', 'solucoes.php?id=14', 8, 6),
(15, 'Inovação e Tecnologia', '#', NULL, 5),
(16, 'Inovações e Tecnologia 1', 'inovacoes.php?id=16', 15, 1),
(17, 'Inovações e Tecnologia 2', 'inovacoes.php?id=17', 15, 2),
(18, 'Inovações e Tecnologia 3', 'inovacoes.php?id=18', 15, 3),
(19, 'Inovações e Tecnologia 4', 'inovacoes.php?id=19', 15, 4),
(20, 'Inovações e Tecnologia 5', 'inovacoes.php?id=20', 15, 5),
(21, 'Inovações e Tecnologia 6', 'inovacoes.php?id=21', 15, 6),
(22, 'Os Nossos Parceiros', 'parceiros.php', NULL, 6),
(23, 'Contactos', 'contactos.php', NULL, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_empresa`
--

CREATE TABLE `paginas_empresa` (
  `id` int(11) NOT NULL,
  `titulo_h1` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `id_navbar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `paginas_empresa`
--

INSERT INTO `paginas_empresa` (`id`, `titulo_h1`, `texto`, `id_navbar`) VALUES
(1, 'Quem Somos', '<p><strong>Potenciamos a&nbsp;sua organização&nbsp;com soluções tecnológicas à medida</strong>&nbsp;</p><p style=\"text-align:justify;\">A <strong>TA Comunicações </strong>é uma empresa tecnológica que fornece soluções integradas de voz e dados, com especial foco no segmento Corporate.&nbsp; Ao apostar na personalização das soluções, a TA Comunicações posiciona-se como parceiro tecnológico, que potencia a eficiência dos seus clientes .</p><p style=\"text-align:justify;\">&nbsp;</p><p><strong>Praticamente 30 anos de experiência no fornecimento de soluções Integradas de Comunicações</strong>&nbsp;</p><p style=\"text-align:justify;\">Fundada em 1996, sediada em Lisboa, conta com praticamente 30 anos de experiência que têm contribuido para o crescimento tecnológico dos seus clientes. Desde a sua origem, a empresa posiciona-se enquanto representante do principal fornecedor de soluções de comunicações integradas.&nbsp;</p><p style=\"text-align:center;\"><img src=\"https://tacomunicacoes.pt//public/uploads/parceiros/mitel.svg\" alt=\"logo-mitel\" width=\"282\" height=\"66\"></p><p style=\"text-align:center;\">&nbsp;</p><p><strong>Setor das telecomunicações&nbsp;</strong>&nbsp;</p><p style=\"text-align:justify;\">O desenvolvimento do negócio da empresa, no setor das telecomunicações, foi alicerçado na representação da PT Negócios (atual Meo&nbsp; Empresas).&nbsp;Esta parceria permitiu à TA Comunicações o acesso a um vasto portefólio de produtos e serviços tecnológicos oferecendo aos&nbsp; clientes, soluções integradas chave-na-mão consolidando a sua presença no mercado como uma empresa de referência no setor.&nbsp;</p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:center;\"><img src=\"https://tacomunicacoes.pt//public/uploads/parceiros/Asset%201%403x.png\" alt=\"\" width=\"282\" height=\"229\"></p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:justify;\"><strong>Compromisso no desenvolvimento dos colaboradores</strong>&nbsp;</p><p style=\"text-align:justify;\">O capital humano é o ativo de maior valor na organização. A empresa tem um compromisso contínuo no desenvolvimento pessoal e profissional dos seus colaboradores,&nbsp;dotando-os das mais elevadas competências.&nbsp;</p><p style=\"text-align:justify;\">&nbsp;</p><p><strong>Relações a longo prazo</strong>&nbsp;</p><p style=\"text-align:justify;\">A TA Comunicações tem como base primordial da sua atividade criar relações sólidas e duradouras tanto com os fornecedores como com os clientes<i>.</i></p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:justify;\">&nbsp;</p><p><strong>Proposta de valor</strong></p><p style=\"text-align:justify;\">O fator diferenciador do modo de atuação da TA Comunicações no mercado é a sua relação personalizada com cada cliente, posicionando-se como consultor tecnológico de referência.</p>', 2),
(2, 'Historial', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 3),
(3, 'Missão, Visão e Valores', '<h4 style=\"text-align:justify;\"><strong>Missão</strong></h4><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:justify;\">Fornecer soluções globais e integradas de comunicações de voz e dados, capazes de sustentar, fortalecer e criar valor ao negócio dos seus clientes empresarias, independentemente do seu setor de atividade.</p><h4 style=\"text-align:justify;\"><strong>Visão</strong></h4><p style=\"text-align:justify;\">Ser uma referência na entrega de soluções globais de comunicações para o mercado empresarial de forma a prestar um serviço customizado com resultados de excelência.</p><p style=\"text-align:justify;\">&nbsp;</p><h4 style=\"text-align:justify;\"><strong>Valores</strong></h4><ul><li><p style=\"text-align:justify;\">Confiança</p></li><li><p style=\"text-align:justify;\">Foco no cliente</p></li><li><p style=\"text-align:justify;\">Rigor</p></li><li><p style=\"text-align:justify;\">Transparência</p></li><li><p style=\"text-align:justify;\">Ética</p></li></ul>', 4),
(4, 'Prémios e Certificações', '<p style=\"text-align:center;\"><strong>\"Sozinhos Vamos Mais Rápido, Mas Juntos Vamos Mais Longe”</strong></p><p style=\"text-align:justify;\">Este tem sido o princípio para a seleção de Parcerias estratégicas&nbsp;da TA Comunicações. Escolher os líderes de mercado como parceiros permite o acesso a um vasto portefólio de produtos e serviços, disponibilizando as melhores soluções globais integradas.</p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"aspect-ratio:1439/3375;width:1118.33px;\" src=\"https://tacomunicacoes.pt//public/uploads/destaques/premios.png\" alt=\"premios-e-certificacoes-teleaplicacao\" width=\"1439\" height=\"3375\"></p>', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_inovacoes`
--

CREATE TABLE `paginas_inovacoes` (
  `id` int(11) NOT NULL,
  `titulo_h1` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `texto_2` text NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `id_navbar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `paginas_inovacoes`
--

INSERT INTO `paginas_inovacoes` (`id`, `titulo_h1`, `texto`, `texto_2`, `imagem`, `id_navbar`) VALUES
(1, 'Inovações e Tecnologia 1', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<img src=\"http://localhost/comunicacoes/backoffice/uploads/inovacao_1.jpg\"></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', 'uploads/inovacao_1.jpg', 16),
(2, 'Inovações e Tecnologia 2', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<img src=\"http://localhost/comunicacoes/backoffice/uploads/7.png\"></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', 'uploads/7.png', 17),
(3, 'Inovações e Tecnologia 3', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<img src=\"http://localhost/comunicacoes/backoffice/uploads/inovacao_3.jpg\"></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', 'uploads/inovacao_3.jpg', 18),
(4, 'Inovações e Tecnologia 4', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><figure class=\"image\"><img src=\"http://localhost/comunicacoes/backoffice/uploads/inovacao_4.jpg\"></figure><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', 'uploads/inovacao_4.jpg', 19),
(5, 'Inovações e Tecnologia 5', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla fa<img src=\"http://localhost/comunicacoes/backoffice/uploads/inovacao_5.webp\">cilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', 'uploads/inovacao_5.webp', 20),
(6, 'Inovações e Tecnologia 6', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<img src=\"http://localhost/comunicacoes/backoffice/uploads/inovacao_6.jpg\"></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', 'uploads/inovacao_6.jpg', 21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas_solucoes`
--

CREATE TABLE `paginas_solucoes` (
  `id` int(11) NOT NULL,
  `titulo_h1` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `texto_2` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `id_navbar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `paginas_solucoes`
--

INSERT INTO `paginas_solucoes` (`id`, `titulo_h1`, `texto`, `texto_2`, `imagem`, `id_navbar`) VALUES
(1, 'Telecomunicações', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<img src=\"http://localhost/comunicacoes/backoffice/uploads/solucao_1.jpg\"></p><p>m ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 'uploads/solucao_1.jpg', 9),
(2, 'Televisões e Audiovisuais', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<img src=\"http://localhost/comunicacoes/backoffice/uploads/solucao_2.webp\"></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 'uploads/solucao_2.webp', 10),
(3, 'Informática e Redes', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<img src=\"http://localhost/comunicacoes/backoffice/uploads/solucao_3.jpg\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 'uploads/solucao_3.jpg', 11),
(4, 'Data Center e Cibersegurança', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<img src=\"http://localhost/comunicacoes/backoffice/uploads/solucao_4.jpg\"></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 'uploads/solucao_4.jpg', 12),
(5, 'Internet of Things', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<img src=\"http://localhost/comunicacoes/backoffice/uploads/solucao_5.webp\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 'uploads/solucao_5.webp', 13),
(6, 'Assistentes Virtuais', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><figure class=\"image\"><img src=\"http://localhost/comunicacoes/backoffice/uploads/solucao_6.jpg\"></figure><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 'uploads/solucao_6.jpg', 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `parceiros`
--

CREATE TABLE `parceiros` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `tamanho` tinyint(1) DEFAULT 0,
  `ordem` int(11) DEFAULT 0,
  `ativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `parceiros`
--

INSERT INTO `parceiros` (`id`, `nome`, `imagem`, `tamanho`, `ordem`, `ativo`) VALUES
(1, 'Altice Empresas', 'imagens/footer/altice_Empresas.svg', 1, 0, 1),
(2, 'Samsung', 'imagens/footer/samsung.svg', 0, 0, 1),
(3, 'Dell', 'imagens/footer/dell.svg', 0, 0, 1),
(4, 'Aruba', 'imagens/footer/aruba.svg', 0, 0, 1),
(5, 'HP', 'imagens/footer/hp.svg', 0, 0, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cabecalhos`
--
ALTER TABLE `cabecalhos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carousel2`
--
ALTER TABLE `carousel2`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carousel_topo`
--
ALTER TABLE `carousel_topo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices para tabela `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contactos_form`
--
ALTER TABLE `contactos_form`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `footer_carousel`
--
ALTER TABLE `footer_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `footer_navbar`
--
ALTER TABLE `footer_navbar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `home_conteudo`
--
ALTER TABLE `home_conteudo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `paginas_empresa`
--
ALTER TABLE `paginas_empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_navbar` (`id_navbar`);

--
-- Índices para tabela `paginas_inovacoes`
--
ALTER TABLE `paginas_inovacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_navbar` (`id_navbar`);

--
-- Índices para tabela `paginas_solucoes`
--
ALTER TABLE `paginas_solucoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_navbar` (`id_navbar`);

--
-- Índices para tabela `parceiros`
--
ALTER TABLE `parceiros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cabecalhos`
--
ALTER TABLE `cabecalhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `carousel2`
--
ALTER TABLE `carousel2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `carousel_topo`
--
ALTER TABLE `carousel_topo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `contactos_form`
--
ALTER TABLE `contactos_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `footer_carousel`
--
ALTER TABLE `footer_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `footer_navbar`
--
ALTER TABLE `footer_navbar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `home_conteudo`
--
ALTER TABLE `home_conteudo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `paginas_empresa`
--
ALTER TABLE `paginas_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `paginas_inovacoes`
--
ALTER TABLE `paginas_inovacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `paginas_solucoes`
--
ALTER TABLE `paginas_solucoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `parceiros`
--
ALTER TABLE `parceiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `paginas_empresa`
--
ALTER TABLE `paginas_empresa`
  ADD CONSTRAINT `paginas_empresa_ibfk_1` FOREIGN KEY (`id_navbar`) REFERENCES `navbar` (`id`);

--
-- Limitadores para a tabela `paginas_inovacoes`
--
ALTER TABLE `paginas_inovacoes`
  ADD CONSTRAINT `paginas_inovacoes_ibfk_1` FOREIGN KEY (`id_navbar`) REFERENCES `navbar` (`id`);

--
-- Limitadores para a tabela `paginas_solucoes`
--
ALTER TABLE `paginas_solucoes`
  ADD CONSTRAINT `paginas_solucoes_ibfk_1` FOREIGN KEY (`id_navbar`) REFERENCES `navbar` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
