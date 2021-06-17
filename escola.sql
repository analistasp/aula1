-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Jun-2021 às 05:31
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idade` int(11) NOT NULL,
  `curso` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bolsa` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `idade`, `curso`, `bolsa`, `created_at`, `updated_at`) VALUES
(52, 'Ariovaldo', 34, 'Técnico em Informática', 500.00, '2021-06-10 03:00:00', '2021-06-10 21:15:54'),
(53, 'Xavier', 43, 'Técnico em Nutrição', 600.00, '2021-06-10 03:00:00', '2021-06-10 21:15:54'),
(55, 'Maria Bonita', 22, 'Técnico em Administração', 480.00, '2021-06-10 03:00:00', '2021-06-10 21:15:54'),
(60, 'Maria Bonita 2', 22, 'Técnico em Administração', 480.00, '2021-06-10 03:00:00', '2021-06-10 23:23:49'),
(61, 'Ferdinando', 29, 'Técnico em Farmácia', 600.00, '2021-06-10 03:00:00', '2021-06-10 21:16:25'),
(62, 'Ariovaldo', 34, 'Técnico em Informática', 500.00, '2021-06-10 03:00:00', '2021-06-10 21:16:27'),
(63, 'Xavier', 43, 'Técnico em Nutrição', 600.00, '2021-06-10 03:00:00', '2021-06-10 21:16:27'),
(64, 'Creide', 30, 'Técnico em Enfermagem', 550.00, '2021-06-10 03:00:00', '2021-06-10 21:16:27'),
(65, 'Maria Bonita', 22, 'Técnico em Administração', 480.00, '2021-06-10 03:00:00', '2021-06-10 21:16:27'),
(67, 'Ariovaldo', 34, 'Técnico em Informática', 500.00, '2021-06-10 03:00:00', '2021-06-10 21:16:28'),
(68, 'Xavier', 43, 'Técnico em Nutrição', 600.00, '2021-06-10 03:00:00', '2021-06-10 21:16:28'),
(69, 'Creide', 30, 'Técnico em Enfermagem', 550.00, '2021-06-10 03:00:00', '2021-06-10 21:16:28'),
(70, 'Maria Bonita', 22, 'Técnico em Administração', 480.00, '2021-06-10 03:00:00', '2021-06-10 21:16:28'),
(71, 'Ferdinando', 29, 'Técnico em Farmácia', 600.00, '2021-06-10 03:00:00', '2021-06-10 21:16:28'),
(72, 'Ariovaldo', 34, 'Técnico em Informática', 500.00, '2021-06-10 03:00:00', '2021-06-11 00:00:10'),
(73, 'Xavier', 43, 'Técnico em Nutrição', 600.00, '2021-06-10 03:00:00', '2021-06-11 00:00:10'),
(74, 'Creide', 30, 'Técnico em Enfermagem', 550.00, '2021-06-10 03:00:00', '2021-06-11 00:00:10'),
(75, 'Maria Bonita', 22, 'Técnico em Administração', 480.00, '2021-06-10 03:00:00', '2021-06-11 00:00:10'),
(76, 'Ferdinando', 29, 'Técnico em Farmácia', 600.00, '2021-06-10 03:00:00', '2021-06-11 00:00:10'),
(77, 'Ariovaldo', 34, 'Técnico em Informática', 500.00, '2021-06-10 03:00:00', '2021-06-11 00:00:12'),
(78, 'Xavier', 43, 'Técnico em Nutrição', 600.00, '2021-06-10 03:00:00', '2021-06-11 00:00:12'),
(79, 'Creide', 30, 'Técnico em Enfermagem', 550.00, '2021-06-10 03:00:00', '2021-06-11 00:00:12'),
(80, 'Maria Bonita', 22, 'Técnico em Administração', 480.00, '2021-06-10 03:00:00', '2021-06-11 00:00:12'),
(81, 'Ferdinando', 29, 'Técnico em Farmácia', 600.00, '2021-06-10 03:00:00', '2021-06-11 00:00:12'),
(82, 'Ariovaldo', 34, 'Técnico em Informática', 500.00, '2021-06-10 03:00:00', '2021-06-11 00:00:13'),
(83, 'Xavier', 43, 'Técnico em Nutrição', 600.00, '2021-06-10 03:00:00', '2021-06-11 00:00:13'),
(84, 'Creide', 30, 'Técnico em Enfermagem', 550.00, '2021-06-10 03:00:00', '2021-06-11 00:00:13'),
(85, 'Maria Bonita', 22, 'Técnico em Administração', 480.00, '2021-06-10 03:00:00', '2021-06-11 00:00:13'),
(86, 'Ferdinando', 29, 'Técnico em Farmácia', 600.00, '2021-06-10 03:00:00', '2021-06-11 00:00:13'),
(87, 'Ariovaldo', 34, 'Técnico em Informática', 500.00, '2021-06-10 03:00:00', '2021-06-11 00:00:14'),
(88, 'Xavier', 43, 'Técnico em Nutrição', 600.00, '2021-06-10 03:00:00', '2021-06-11 00:00:14'),
(89, 'Creide', 30, 'Técnico em Enfermagem', 550.00, '2021-06-10 03:00:00', '2021-06-11 00:00:14'),
(90, 'Maria Bonita', 22, 'Técnico em Administração', 480.00, '2021-06-10 03:00:00', '2021-06-11 00:00:14'),
(91, 'Ferdinando', 29, 'Técnico em Farmácia', 600.00, '2021-06-10 03:00:00', '2021-06-11 00:00:14'),
(92, 'Ariovaldo', 34, 'Técnico em Informática', 500.00, '2021-06-10 03:00:00', '2021-06-11 00:00:16'),
(93, 'Xavier', 43, 'Técnico em Nutrição', 600.00, '2021-06-10 03:00:00', '2021-06-11 00:00:16'),
(94, 'Creide', 30, 'Técnico em Enfermagem', 550.00, '2021-06-10 03:00:00', '2021-06-11 00:00:16'),
(95, 'Maria Bonita', 22, 'Técnico em Administração', 480.00, '2021-06-10 03:00:00', '2021-06-11 00:00:16'),
(96, 'Ferdinando', 29, 'Técnico em Farmácia', 600.00, '2021-06-10 03:00:00', '2021-06-11 00:00:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_18_180738_create_aluno_models_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
