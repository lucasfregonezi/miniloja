-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 03-Ago-2023 às 09:36
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `miniloja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Webcam 4k Streaming', 'webcam-4k-streming-full-hd', '169.90', 'https://m.media-amazon.com/images/I/51necbZRz4L._AC_UL400_.jpg', 'Webcam 4K YUNSYE Streaming Webcam: Full HD 4K - Ring Light/Adjustable Brightness - Built-in Microphone - Autofocus - Works with', '2023-07-30 21:50:11', '2023-07-30 21:50:11'),
(2, 'Teclado', 'teclado', '100.00', 'https://m.media-amazon.com/images/I/61fE+UTLnpL._AC_UL400_.jpg', 'Teclado padrao abnt2', '2023-07-30 21:50:41', '2023-07-30 21:50:41'),
(3, 'Mouse', 'mouse', '85.00', 'https://m.media-amazon.com/images/I/61o+7lZlroL._AC_UL400_.jpg', 'Mouse ps2 optico', '2023-07-30 21:51:22', '2023-07-30 21:51:22'),
(4, 'Monitor Led', 'monitor-led', '2450.00', 'https://m.media-amazon.com/images/I/51xMBfXV74L._AC_SX522_.jpg', 'Monitor 27pol eled', '2023-07-30 21:52:02', '2023-07-30 21:52:02'),
(5, 'Microfone', 'microfone', '420.00', 'https://m.media-amazon.com/images/I/61NrAZHeuCL.__AC_SX300_SY300_QL70_ML2_.jpg', 'meu microfone', '2023-07-30 21:52:39', '2023-07-30 21:52:39'),
(6, 'Mose Pad Gamer', 'mouse-pad-gamer', '62.90', 'https://m.media-amazon.com/images/I/71LTlP8g4UL._AC_SX679_.jpg', 'Mouse Pad Gamer Iluminado led Rgb Grande 80 cm por 30 com Mousepad gamer Led com em volta superficie speed para jogos', '2023-08-02 15:10:19', '2023-08-02 15:10:19'),
(7, 'Headset Gamer', 'headset-gamer-fifine', '286.99', 'https://m.media-amazon.com/images/I/71LP40TtRHL._AC_UL400_.jpg', 'FIFINE Headset Gamer Fone De Ouvido Para Jogos Para Fones De Ouvido Com Fio PC Com Microfone-7.1 Surround Sound Computer Fone De Ouvido US', '2023-08-02 15:15:04', '2023-08-02 15:15:04'),
(8, 'Headphone H200d', 'headphone-h200d', '220.00', 'https://m.media-amazon.com/images/I/71sV-QnV8TL._AC_UL400_.jpg', 'Headphone Fone de Ouvido Havit HV-H2002d, Gamer, com Microfone, Falante 53mm, Plug 3.5mm: compatível com XBOX ONE e PS4', '2023-08-02 15:16:28', '2023-08-02 15:16:28'),
(9, 'Webcam HD', 'webcam-hd-com-microfone', '168.00', 'https://m.media-amazon.com/images/I/519vmGo5jYL._AC_UL400_.jpg', 'Permaneça conectado em widescreen HD 720p Vídeos em HD nas chamadas por Skype, Windows Live Messenger e Logitech Vid HD — a maneira mais rápida e fácil de ver aqueles a quem você ama frente a frente Fácil de gravar e de fazer uploads de vídeos em HD de tirar o fôlego\r\nPossui incrível som e iluminação Correção automática de luz para a melhor imagem possível, mesma que sua chamada seja com luz fraca. Cancelamento de som de fundo reduz sons indesejáveis para que você seja ouvido claramente\r\nFácil de tirar e enviar fotos Tire fotos de 3-megapixels com apenas um click\r\nLogitech Tecnologia de Cristal Fluido Possibilita videos mais suaves, com cores mais brilhantes e som mais claro', '2023-08-02 19:26:16', '2023-08-02 19:26:16'),
(10, 'Kit 2 Soft Box', 'kit-soft-box', '499.99', 'https://m.media-amazon.com/images/I/51BMkCo0-mL._AC_UL400_.jpg', 'softbox, soft, box, iluminação, estúdio, contínua, led, foto, vídeo, live, vlog, curso, youtube, zoom, fotografia', '2023-08-02 19:28:10', '2023-08-02 19:28:10'),
(12, 'MacBook Pro 13pol', 'macbook-pro-13-pol', '11699.00', 'https://m.media-amazon.com/images/I/41lmLVeQYAL._AC_UL400_.jpg', 'Com a potencia do CHIP M2 – O notebook MacBook Pro de 13 polegadas é potente e portátil. Faça tudo mais rápido com CPU de 8 núcleos de última geração, GPU de 10 núcleos e até 24 GB de memória unificada.\r\nAté 20 horas de bateria – A bateria dura o dia inteiro e noite adentro graças à eficiência no uso de energia do chip M2 da Apple.\r\nDesempenho contínuo – Com resfriamento ativo, o MacBook Pro de 13 polegadas garante níveis de rendimento profissional por horas a fio, mesmo em tarefas que exigem muito da CPU e da GPU.\r\nTela brilhante – A tela Retina de 13,3 polegadas tem 500 nits de brilho e ampla tonalidade de cores P3 para imagens vibrantes e detalhadas.\r\nCamera HD e microfones com qualidade de estúdio – Cause uma bela impressão com a câmera FaceTime HD e o conjunto de três microfones.', '2023-08-02 19:32:01', '2023-08-02 19:32:01'),
(13, 'MacBook Pro 14pol', 'macbook-pro14-pol', '17990.00', 'https://m.media-amazon.com/images/I/41qo2D+g08L._AC_UL400_.jpg', 'Os processadores M1 Pro e M1 Max da Apple representam um salto enorme no desempenho da CPU, GPU e aprendizagem automática\r\nA CPU até 10‐core oferece um desempenho até 3,7 vezes mais rápido para executar as tarefas num instante\r\nGPU até 32‐core com um desempenho até 13 vezes mais rápido para apps e jogos com gráficos complexos\r\nNeural Engine 16‐core para um desempenho de aprendizagem automática até 11 vezes mais rápido\r\nMaior autonomia da bateria, até 17 horas', '2023-08-02 19:36:04', '2023-08-02 19:36:04'),
(14, 'Lenovo 82MD0007BR', 'lenovo-82md0007br-ideapad-3i', '2690.10', 'https://m.media-amazon.com/images/I/41tQcIInuAL._AC_UL400_.jpg', 'Estilo: Notebook Lenovo IdeaPad\r\nMarca	Lenovo\r\nNome do modelo	Ideapad 3\r\nTamanho da tela	15 Polegadas\r\nCor	Cinza\r\nTamanho do disco rígido	256 GB\r\nModelo da CPU	Intel Core i5\r\nTamanho instalado da memória RAM	8 GB\r\nSistema operacional	Windows 11 Home\r\nCaracterísticas especiais	Teclado Numérico\r\nDescrição da placa de vídeo	Integrado\r\nVer mais\r\nSobre este item\r\nProcessador Core i5 11a geracao\r\nPlaca de video integrada Intel Iris Xe\r\nArmazenamento SSD PCIe, que é 10x mais rápido que um HDD 2.5” SATA\r\nCom porta de privacidade da webcam', '2023-08-02 19:38:13', '2023-08-02 19:38:13'),
(15, 'Acer 15,6 HD Led', 'acer-15-hdled-a315-34-c6zs', '3299.00', 'https://m.media-amazon.com/images/I/51ZYaD45QlL._AC_UL400_.jpg', 'Marca	ACER\r\nNome do modelo	NX.HRNAL.002\r\nTamanho da tela	15,6 Milímetros\r\nCor	preto\r\nTamanho do disco rígido	1 TB\r\nModelo da CPU	Intel Celeron\r\nTamanho instalado da memória RAM	4 GB\r\nSistema operacional	Linux\r\nCaracterísticas especiais	Teclado Numérico\r\nDescrição da placa de vídeo	Integrado\r\nVer mais\r\nSobre este item\r\nProcessador (CPU) Intel Celeron N4000\r\n4GB DDR4 SDRAM\r\nTeclado tipo membrana em português do Brasil padrão ABNT 2 com teclado numérico dedicado\r\nTela de 15.6” com resolução HD\r\nTouchpad com comandos inteligentes', '2023-08-02 19:40:05', '2023-08-02 19:40:05'),
(16, 'Computador Gamer', 'computador-gamer-completo-rgb-intel-corei5', '1599.99', 'https://m.media-amazon.com/images/I/6109CjoWCKL._AC_UL400_.jpg', 'Marca	3green Technology\r\nSistema operacional	Windows 10\r\nTamanho da tela	20 Polegadas\r\nTamanho instalado da memória RAM	8 GB\r\nNome do modelo	3green Premium\r\nModelo da CPU	Core i5 3470\r\nCor	Preto\r\nFabricante da CPU	Intel\r\nTecnologia de conectividade	Ethernet\r\nTotal de portas USB	4\r\nVer mais\r\nSobre este item\r\nMonitor LED 20\" com 75Hz de taxa de atualização\r\nGabinete Gamer com 3 LED Fans RGB e controle remoto para gerenciar as cores e efeitos\r\nKit Gamer RGB completo com mouse, teclado semi mecânico, headset e mousepad\r\nPC Gamer com Microsoft Windows 10 original e vitalício\r\nGARANTIA: 1 ANO', '2023-08-02 19:42:03', '2023-08-02 19:42:03'),
(17, 'Echo Show 5', 'echo-show-5-seg-geracao', '569.05', 'https://m.media-amazon.com/images/I/71wSK5GhXRS._AC_UL400_.jpg', 'Aproveite seu dia com Alexa: defina alarmes e timers, cheque seu calendário ou as notícias, faça chamadas de vídeo com a câmera de 2 MP para amigos e familiares que tenham o aplicativo Alexa ou um dispositivo Echo com tela e reproduza músicas ou séries. Tudo com sua voz.\r\nLeve Alexa para sua mesa de cabeceira: comece o dia com uma rotina para acender as luzes compatíveis. Acorde com as últimas notícias, previsão do tempo ou sua música favorita.\r\nConecte-se por chamadas de vídeo: use a câmera de 2 MP para fazer chamadas para amigos e familiares que tenham o aplicativo Alexa ou um dispositivo Echo com tela. Envie avisos para outros dispositivos compatíveis em sua casa.\r\nDivirta-se: peça para Alexa reproduzir séries e filmes no Prime Video, Netflix e mais. Reproduza músicas do Amazon Music, Apple Music, Spotify, Deezer e outros. Alguns serviços podem exigir assinaturas ou taxas adicionais.\r\nExiba fotos na sua tela inteligente: use o Facebook para transformar sua tela inicial em um porta-retratos digital.\r\nDesenvolvido para proteger sua privacidade: a Amazon não vende informações pessoais de clientes. Construído com várias camadas de controle de privacidade, incluindo desligar o microfone e a câmera apertando apenas um botão e deslizar a tampa embutida para cobrir a câmera.', '2023-08-02 19:43:52', '2023-08-02 19:43:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Lucas', 'Fregonezi', 'lucasfregonezi@gmail.com', 'lucas123', '2023-08-01 23:03:20', '2023-08-01 23:03:20');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
