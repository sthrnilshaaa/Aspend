// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Aspends';

  @override
  String get appTagline => 'Gastos inteligentes, simplificados.';

  @override
  String get totalBalance => 'Saldo Total';

  @override
  String get income => 'Renda';

  @override
  String get expense => 'Despesa';

  @override
  String get monthlyBudget => 'Orçamento Mensal';

  @override
  String get transactions => 'Transações';

  @override
  String get recentTransactions => 'Transações recentes';

  @override
  String get seeAll => 'Ver tudo';

  @override
  String get settings => 'Configurações';

  @override
  String get language => 'Linguagem';

  @override
  String get theme => 'Tema';

  @override
  String get darkMode => 'Modo escuro';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get systemDefault => 'Padrão do sistema';

  @override
  String get adaptiveColor => 'Cor Adaptável';

  @override
  String get customColor => 'Cor personalizada';

  @override
  String get backup => 'Backup e restauração';

  @override
  String get export => 'Exportar dados';

  @override
  String get import => 'Importar dados';

  @override
  String get privacyPolicy => 'política de Privacidade';

  @override
  String get telegramSupport => 'Suporte de telegrama';

  @override
  String get addTransaction => 'Adicionar transação';

  @override
  String get editTransaction => 'Editar transação';

  @override
  String get deleteTransaction => 'Excluir Transação';

  @override
  String get amount => 'Quantia';

  @override
  String get category => 'Categoria';

  @override
  String get account => 'Conta';

  @override
  String get date => 'Data';

  @override
  String get note => 'Nota (opcional)';

  @override
  String get save => 'Salvar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get search => 'Pesquisar transações...';

  @override
  String get noTransactions => 'Nenhuma transação encontrada';

  @override
  String get voiceInput => 'Entrada de voz';

  @override
  String get speechUnavailable => 'Reconhecimento de fala indisponível';

  @override
  String get microPermissionDenied => 'Permissão de microfone negada';

  @override
  String get microPermissionTitle => 'Acesso ao microfone necessário';

  @override
  String get microPermissionDesc =>
      'O Aspends precisa de acesso ao microfone para permitir que você insira detalhes de transações por comandos de voz. Suas entradas de voz são processadas totalmente offline no seu dispositivo e nunca são enviadas ou compartilhadas.';

  @override
  String get microPermissionGrant => 'Ativar voz';

  @override
  String get appearance => 'Aparência';

  @override
  String get security => 'Segurança';

  @override
  String get autoDetection => 'Detecção automática de transações';

  @override
  String get backupExport => 'Backup e exportação';

  @override
  String get dataManagement => 'Gerenciamento de dados';

  @override
  String get budgetingBalance => 'Orçamento e Equilíbrio';

  @override
  String get customDropdowns => 'Itens suspensos personalizados';

  @override
  String get appInformation => 'Informações do aplicativo';

  @override
  String get developedBy => 'Desenvolvido com ❤️ por Sthrnilshaa';

  @override
  String get chooseTheme => 'Escolha o seu tema preferido';

  @override
  String get appLock => 'Bloqueio de aplicativo';

  @override
  String get appLockDesc =>
      'Exigir autenticação do dispositivo para abrir o aplicativo';

  @override
  String get upiId => 'ID da UPI';

  @override
  String get upiIdDesc => 'Defina seu ID UPI para solicitações de dinheiro';

  @override
  String get upiName => 'Nome de exibição';

  @override
  String get upiNameDesc => 'Opcional: nome mostrado na solicitação UPI';

  @override
  String get analytics => 'Análise';

  @override
  String get people => 'Pessoas';

  @override
  String get charts => 'Gráficos';

  @override
  String get sortBy => 'Ordenar por';

  @override
  String get holdToRecord => 'Segure para registrar a transação';

  @override
  String get couldNotFindAmount =>
      'Não foi possível encontrar o valor. Experimente: \'Gastei 500 em comida\'';

  @override
  String savedAmount(String amount, String category) {
    return 'Salvo $amount para $category';
  }

  @override
  String logsDeleted(int count) {
    return '$count registros excluídos';
  }

  @override
  String patternsIgnored(int count) {
    return 'Padrões $count permanentemente ignorados';
  }

  @override
  String get recheckComplete => 'Nova verificação concluída';

  @override
  String get aboutApp => 'Sobre Aspens';

  @override
  String get developerDesigner => 'Desenvolvedor e Designer';

  @override
  String get leadDesigner => 'Designer Líder';

  @override
  String get developer => 'Desenvolvedor';

  @override
  String get supportLegal => 'Suporte e Jurídico';

  @override
  String get privacyPolicyDesc =>
      'Leia nosso documento de política de privacidade';

  @override
  String get helpSupport => 'Ajuda e suporte';

  @override
  String get telegramSupportDesc => 'Junte-se ao nosso Telegram para suporte';

  @override
  String get projectInfo => 'Informações do projeto';

  @override
  String get openSource => 'Código aberto';

  @override
  String get openSourceDesc => 'Código aberto orgulhosamente no GitHub';

  @override
  String get licenses => 'Licenças de código aberto';

  @override
  String get licensesDesc =>
      'Ver as licenças de terceiros usadas neste aplicativo';

  @override
  String get rateApp => 'Taxa de despesas';

  @override
  String get rateAppDesc => 'Apoie-nos com uma classificação de 5 estrelas';

  @override
  String get couldNotLaunchUrl => 'Não foi possível abrir o link';

  @override
  String errorWithDetails(String error) {
    return 'Erro: $error';
  }

  @override
  String get madeWithLove => 'Feito com ❤️ para finanças melhores';

  @override
  String get howAspendWorks => 'COMO FUNCIONA O ASPEND';

  @override
  String get howItWorksTitle1 => '1. Interceptação Inteligente';

  @override
  String get howItWorksDesc1 =>
      'Um serviço de segundo plano seguro e com bateria otimizada escuta SMS recebidos e notificações bancárias.';

  @override
  String get howItWorksTitle2 => '2. Análise local de nuvem zero';

  @override
  String get howItWorksDesc2 =>
      'Algoritmos off-line inteligentes extraem valores, categorias e comerciantes instantaneamente – 100% no seu dispositivo.';

  @override
  String get howItWorksTitle3 => '3. Recuperação automática offline';

  @override
  String get howItWorksDesc3 =>
      'Cada vez que você abre ou retoma o Aspend, ele verifica automaticamente o histórico em busca de transações perdidas durante sua ausência.';

  @override
  String get howItWorksTitle4 => '4. Bloqueio de privacidade final';

  @override
  String get howItWorksDesc4 =>
      'Sem servidores, sem solicitações da web. Seus dados financeiros são protegidos localmente no armazenamento criptografado do Hive.';

  @override
  String get autoDetectionSetup => 'Configuração de detecção automática';

  @override
  String get autoDetectionSetupDesc =>
      'Para detectar transações automaticamente, precisamos de permissões específicas. Todos os aplicativos bancários e de transações serão monitorados com segurança.';

  @override
  String get notificationAccess => '1. Acesso à notificação';

  @override
  String get notificationAccessDesc =>
      'Permite-nos ler alertas de transações de bancos e aplicativos de pagamento.';

  @override
  String get smsPermission => '2. Permissão de SMS';

  @override
  String get smsPermissionDesc =>
      'Permite a leitura de SMS de transações do seu banco.';

  @override
  String get finishSetup => 'Concluir configuração';

  @override
  String get grant => 'Conceder';

  @override
  String get appNameShort => 'Aspends';

  @override
  String get splashTagline => 'Gestão Inteligente de Dinheiro';

  @override
  String get budget => 'Orçamento';

  @override
  String overBudgetBy(String amount) {
    return '⚠️ Ultrapassado em $amount';
  }

  @override
  String get balanceDetailsTitle => 'Detalhes do saldo';

  @override
  String get editBalanceTitle => 'Editar saldo';

  @override
  String get tapHoldToEditBalance => 'Toque e segure para editar o saldo';

  @override
  String get longPressBalanceCardHint =>
      'Mantenha pressionado o cartão de saldo na tela inicial';

  @override
  String get newBalanceLabel => 'Novo equilíbrio';

  @override
  String get viewAll => 'Ver tudo';

  @override
  String get searchHint => 'Pesquisar categorias ou notas...';

  @override
  String get emptyWalletTitle => 'Sua carteira está tranquila';

  @override
  String get emptyWalletDesc =>
      'Comece adicionando uma transação manualmente ou ative a detecção automática para rastrear seus gastos sem esforço.';

  @override
  String get addPerson => 'Adicionar pessoa';

  @override
  String get addNewPerson => 'Adicionar nova pessoa';

  @override
  String get editPerson => 'Editar pessoa';

  @override
  String get addPhoto => 'Adicionar foto';

  @override
  String get personName => 'Nome da pessoa';

  @override
  String get youGet => 'Você possui';

  @override
  String get youGive => 'Você pede emprestado';

  @override
  String get youWillGet => 'Você será o dono';

  @override
  String get youWillGive => 'Você vai pedir emprestado';

  @override
  String get noPeopleYet => 'Nenhuma pessoa adicionada ainda';

  @override
  String get searchPeople => 'Pesquise pessoas...';

  @override
  String get enterNameHint =>
      'Digite o nome da pessoa com quem você deseja rastrear transações';

  @override
  String get updateDetailsHint => 'Atualizar os detalhes desta pessoa';

  @override
  String get expenses => 'Despesas';

  @override
  String get history => 'História';

  @override
  String get overview => 'Visão geral';

  @override
  String get trends => 'Tendências';

  @override
  String get categories => 'Categorias';

  @override
  String get noDataFound => 'Nenhum registro de dados encontrado';

  @override
  String get appColor => 'Cor do aplicativo';

  @override
  String get selectColor => 'Selecione uma cor personalizada para o aplicativo';

  @override
  String get welcomeTitle => 'Bem-vindo ao Aspends Tracker';

  @override
  String get welcomeSubtitle => 'Seu companheiro de finanças pessoais';

  @override
  String get welcomeDesc =>
      'Acompanhe suas receitas, despesas e gerencie seu dinheiro com facilidade. Fique por dentro de seus objetivos financeiros.';

  @override
  String get smartTrackingTitle => 'Rastreamento inteligente de transações';

  @override
  String get smartTrackingSubtitle => 'Organize suas finanças';

  @override
  String get smartTrackingDesc =>
      'Categorize transações, adicione notas e obtenha insights detalhados sobre seus padrões de gastos.';

  @override
  String get peopleTrackingTitle => 'Rastreamento pessoa a pessoa';

  @override
  String get peopleTrackingSubtitle => 'Gerenciar despesas compartilhadas';

  @override
  String get peopleTrackingDesc =>
      'Rastreie o dinheiro que você deve ou é devido por terceiros. Perfeito para colegas de quarto, amigos e familiares.';

  @override
  String get analyticsTitle => 'Belas análises';

  @override
  String get analyticsSubtitle => 'Visualize seus dados';

  @override
  String get analyticsDesc =>
      'Tabelas e gráficos ajudam você a entender seus hábitos de consumo e tendências financeiras.';

  @override
  String get offlineTitle => 'Totalmente off-line';

  @override
  String get offlineSubtitle => 'Seus dados permanecem privados';

  @override
  String get offlineDesc =>
      'Todos os seus dados financeiros são armazenados localmente no seu dispositivo. Não é necessária internet, privacidade total.';

  @override
  String get autoDetectTitle => 'Detecção automática de transações';

  @override
  String get autoDetectSubtitle => 'Inteligente e Automatizado';

  @override
  String get autoDetectDesc =>
      'Detecte automaticamente transações de notificações bancárias. Chega de entradas manuais - suas transações são capturadas instantaneamente!';

  @override
  String get readyTitle => 'Pronto para começar?';

  @override
  String get readySubtitle => 'Vamos começar sua jornada';

  @override
  String get readyDesc =>
      'Está tudo pronto! Comece a monitorar suas finanças e assuma o controle do seu dinheiro hoje.';

  @override
  String get settingUpApp => 'Configurando seu aplicativo...';

  @override
  String get skip => 'Pular';

  @override
  String get next => 'Próximo';

  @override
  String get getStarted => 'Comece';

  @override
  String get requestMoney => 'Solicitar dinheiro';

  @override
  String get requestMoneyTooltip => 'Solicitar dinheiro via UPI';

  @override
  String get generateQr => 'Gerar QR de pagamento';

  @override
  String get sortByNameAZ => 'Nome (A-Z)';

  @override
  String get sortByNameZA => 'Nome (Z-A)';

  @override
  String get sortByBalanceHighest => 'Saldo (mais alto)';

  @override
  String get sortByBalanceLowest => 'Saldo (mais baixo)';

  @override
  String get upiIdNotSet =>
      'ID UPI não definido para esta pessoa. Por favor, adicione-o da edição.';

  @override
  String get couldNotFindUpiApp =>
      'Não foi possível encontrar um aplicativo de pagamento UPI';

  @override
  String get noTransactionsYet => 'Nenhuma transação ainda';

  @override
  String get addFirstTransaction =>
      'Adicione sua primeira transação com a pessoa';

  @override
  String get settleBalance => 'Liquidar Saldo';

  @override
  String settleBalanceDesc(String amount) {
    return 'Isso adicionará uma transação de $amount para zerar o saldo. Continuar?';
  }

  @override
  String get settle => 'Resolver';

  @override
  String get deletePerson => 'Excluir pessoa';

  @override
  String deletePersonDesc(String name) {
    return 'Tem certeza de que deseja excluir $name? Esta ação não pode ser desfeita.';
  }

  @override
  String get deleteTransactionDesc =>
      'Tem certeza de que deseja excluir esta transação?';

  @override
  String get update => 'Atualizar';

  @override
  String get sortTransactionsBy => 'Classificar transações por';

  @override
  String get sortByDateRecent => 'Data (recente)';

  @override
  String get sortByDateOldest => 'Data (mais antiga)';

  @override
  String get sortByAmountHighest => 'Quantidade (mais alta)';

  @override
  String get sortByAmountLowest => 'Quantidade (menor)';

  @override
  String get rangeAll => 'Todos';

  @override
  String get rangeDay => 'Dia';

  @override
  String get rangeWeek => 'Semana';

  @override
  String get rangeMonth => 'Mês';

  @override
  String get rangeYear => 'Ano';

  @override
  String get topCategory => 'Categoria principal';

  @override
  String get noSpending => 'Sem gastos';

  @override
  String get avgDailySpend => 'Média Gasto Diário';

  @override
  String get perDay => 'Por dia';

  @override
  String get monitoredApps => 'Aplicativos monitorados';

  @override
  String get searchAppsHint =>
      'Pesquisar aplicativos de pagamento ou bancários...';

  @override
  String get noEligibleApps => 'Nenhum aplicativo qualificado encontrado';

  @override
  String get noAppsMatchSearch =>
      'Nenhum aplicativo corresponde à sua pesquisa';

  @override
  String get unknownApp => 'Aplicativo desconhecido';

  @override
  String errorLoadingApps(String error) {
    return 'Erro ao carregar aplicativos: $error';
  }

  @override
  String selectedCount(int count) {
    return '$count Selecionado';
  }

  @override
  String get ignorePatternsTooltip => 'Ignorar padrões';

  @override
  String get deleteSelectedTooltip => 'Excluir selecionado';

  @override
  String get clearHistoryTitle => 'Limpar histórico?';

  @override
  String get clearHistoryDesc =>
      'Isso excluirá todos os logs de detecção salvos.';

  @override
  String get clear => 'Claro';

  @override
  String get transactionDetected => 'Transação detectada';

  @override
  String get notificationLogged => 'Notificação registrada';

  @override
  String get patternNotMatched => 'Padrão não correspondido';

  @override
  String get notificationDataTitle => 'DADOS DE NOTIFICAÇÃO';

  @override
  String get copiedToClipboard =>
      'Mensagem copiada para a área de transferência';

  @override
  String get copy => 'CÓPIA';

  @override
  String get smsMessage => 'Mensagem SMS';

  @override
  String get received => 'Recebido';

  @override
  String get paid => 'Pago';

  @override
  String get listeningHint => 'Audição...';

  @override
  String get keepSpeaking => 'Continue falando...';

  @override
  String get done => 'Feito';

  @override
  String get fullBackupTitle => 'Backup completo (JSON)';

  @override
  String get fullBackupDesc => 'Faça backup de todos os dados para JSON';

  @override
  String get restoreBackupTitle => 'Restaurar backup (JSON)';

  @override
  String get restoreBackupDesc => 'Restaure todos os dados do backup JSON';

  @override
  String get backupCompleted => 'Backup concluído!';

  @override
  String backupFailed(String error) {
    return 'Falha no backup: $error';
  }

  @override
  String get restoreCompleted => 'Dados restaurados com sucesso!';

  @override
  String get restoreFailedCancelled => 'A restauração falhou ou foi cancelada';

  @override
  String restoreFailed(String error) {
    return 'Falha na restauração: $error';
  }

  @override
  String get pdfExported => 'PDF exportado com sucesso!';

  @override
  String pdfExportFailed(String error) {
    return 'Falha na exportação de PDF: $error';
  }

  @override
  String get peopleExported => 'Dados de pessoas exportados!';

  @override
  String peopleExportFailed(String error) {
    return 'Falha na exportação de dados de pessoas: $error';
  }

  @override
  String get allDataDeleted => 'Todos os dados excluídos com sucesso!';

  @override
  String get introReset => 'Introdução redefinida com sucesso!';

  @override
  String get selectRestoreMode => 'Selecione o modo de restauração';

  @override
  String get restoreModeDesc =>
      'Escolha como lidar com os registros de transações existentes durante a restauração de dados.';

  @override
  String get mergeSkipDuplicates => 'Mesclar e pular duplicatas';

  @override
  String get mergeSkipDesc =>
      'Evite entradas duplicadas, mantendo todos os novos itens exclusivos.';

  @override
  String get overwriteConflicts => 'Conflitos de substituição e atualização';

  @override
  String get overwriteConflictsDesc =>
      'Substitua os registros de transações existentes por versões de backup em caso de conflitos.';

  @override
  String get exportCsvTitle => 'Transações de exportação (CSV)';

  @override
  String get exportCsvDesc => 'Exporte suas transações para CSV';

  @override
  String get exportCsvSuccess => 'Exportação concluída com sucesso!';

  @override
  String exportCsvFailed(String error) {
    return 'Falha na exportação: $error';
  }

  @override
  String get exportPeopleTitle => 'Exportar dados de pessoas';

  @override
  String get exportPeopleDesc => 'Faça backup de transações de pessoas';

  @override
  String get exportPdfTitle => 'Exportar como PDF';

  @override
  String get exportPdfDesc => 'Gere relatórios em PDF';

  @override
  String get biometricNotSupported =>
      'A autenticação biométrica não é compatível com este dispositivo';

  @override
  String get noBiometricMethods =>
      'Nenhum método de autenticação biométrica disponível';

  @override
  String get authenticateReason =>
      'Autentique-se para ativar o bloqueio do aplicativo';

  @override
  String get authFailedAppLockNotEnabled =>
      'Falha na autenticação. Bloqueio do aplicativo não ativado.';

  @override
  String get appLockEnabledSuccess =>
      'Bloqueio do aplicativo ativado com sucesso';

  @override
  String get appLockDisabledSuccess =>
      'Bloqueio do aplicativo desativado com sucesso';

  @override
  String get failedToEnableAppLock =>
      'Falha ao ativar o bloqueio do aplicativo';

  @override
  String get failedToDisableAppLock =>
      'Falha ao desativar o bloqueio do aplicativo';

  @override
  String get pickAppColor => 'Escolher cor do aplicativo';

  @override
  String get reset => 'Redefinir';

  @override
  String get selectAction => 'Selecionar';

  @override
  String get appColorResetDefault =>
      'Cor do aplicativo redefinida para o padrão!';

  @override
  String get deviceNotSupportBiometricsOrAuth =>
      'O dispositivo não suporta biometria ou autenticação do dispositivo.';

  @override
  String get appLockEnabledDot => 'Bloqueio do aplicativo ativado.';

  @override
  String get appLockDisabledDot => 'Bloqueio do aplicativo desativado.';

  @override
  String get cautionToUse => 'Cuidado ao usar';

  @override
  String get autoDetectCautionDesc =>
      'Este recurso não é 100% perfeito, mas pode funcionar. Todos os dados de SMS e notificações são processados 100% localmente no seu dispositivo para privacidade absoluta.';

  @override
  String get autoDetectSettingSubtitle =>
      'Detecta transações automaticamente a partir de notificações';

  @override
  String get permissionsRequiredNoAccess =>
      'Permissões necessárias: nenhum acesso a notificações ou SMS concedido. A detecção automática não pode ser ativada.';

  @override
  String get noteNotificationAccessMissing =>
      'Nota: o acesso a notificações está ausente. Apenas a detecção por SMS funcionará.';

  @override
  String get noteSmsPermissionMissing =>
      'Nota: a permissão de SMS está ausente. Apenas a detecção por notificação funcionará.';

  @override
  String get autoDetectionEnabledExclaim => 'Detecção automática ativada!';

  @override
  String get autoDetectionDisabledExclaim => 'Detecção automática desativada!';

  @override
  String get processRecentDataTitle => 'Processar dados recentes';

  @override
  String get processRecentDataSubtitle =>
      'Verificar notificações recentes em busca de transações';

  @override
  String get recentDataProcessed => 'Dados recentes processados com sucesso!';

  @override
  String get errorProcessingData => 'Erro ao processar dados';

  @override
  String get testDetectionLogicTitle => 'Testar lógica de detecção';

  @override
  String get testDetectionLogicSubtitle =>
      'Simule uma notificação para verificar a análise';

  @override
  String get showDetectionHistoryTitle => 'Mostrar histórico de detecção';

  @override
  String get showDetectionHistorySubtitle =>
      'Ver registros detalhados das transações detectadas';

  @override
  String get autoDeleteUndetectedTitle =>
      'Excluir automaticamente o histórico não detectado';

  @override
  String get autoDeleteUndetectedSubtitle =>
      'Excluir itens não detectados após 12 horas';

  @override
  String get testParserDiagnosticTitle => 'Diagnóstico de teste do analisador';

  @override
  String get testParserDiagnosticDesc =>
      'Digite uma mensagem de notificação de exemplo para ver como nosso analisador a processa.';

  @override
  String get pasteNotificationHint => 'Cole o texto da notificação aqui...';

  @override
  String get statusBalanceSync => 'Sincronização de saldo';

  @override
  String get statusNoActionDetected => 'Nenhuma ação detectada';

  @override
  String get transactionType => 'Tipo';

  @override
  String get resultLabelMerchant => 'Comerciante';

  @override
  String get resultLabelBank => 'Banco';

  @override
  String get balanceLabel => 'Saldo';

  @override
  String get resultLabelConfidence => 'Confiança';

  @override
  String get unknown => 'Desconhecido';

  @override
  String get general => 'Geral';

  @override
  String get notAvailable => 'N/D';

  @override
  String get close => 'Fechar';

  @override
  String get parseText => 'Analisar texto';

  @override
  String get deleteAllDataTitle => 'Excluir todos os dados';

  @override
  String get deleteAllDataWarningSubtitle =>
      '⚠️ Esta ação não pode ser desfeita';

  @override
  String get resetIntroTitle => 'Redefinir introdução';

  @override
  String get resetIntroSubtitle => 'Mostrar as telas de introdução novamente';

  @override
  String get incomeCategories => 'Categorias de renda';

  @override
  String get incomeCategoriesDesc => 'Gerenciar categorias de renda';

  @override
  String get expenseCategories => 'Categorias de despesas';

  @override
  String get expenseCategoriesDesc => 'Gerenciar categorias de despesas';

  @override
  String get accountsTitle => 'Contas';

  @override
  String get accountsDesc => 'Gerenciar suas contas';

  @override
  String get enterNamePlaceholder => 'Digite o nome...';

  @override
  String get aboutAppSubtitle => 'Desenvolvedor, privacidade, suporte e mais';

  @override
  String get setMonthlySpendingLimit => 'Defina um limite de gastos mensal';

  @override
  String get joinPreviousMonthBalanceTitle => 'Incluir saldo do mês anterior';

  @override
  String get joinPreviousMonthBalanceDesc =>
      'Incluir o saldo do mês anterior no total atual';

  @override
  String get setMonthlyBudgetTitle => 'Definir orçamento mensal';

  @override
  String get budgetAmountLabel => 'Valor do orçamento';

  @override
  String get budgetUpdated => 'Orçamento atualizado!';

  @override
  String get confirmDeleteTitle => 'Confirmar exclusão';

  @override
  String get confirmDeleteAllDesc =>
      'Tem certeza de que deseja excluir todas as transações e redefinir seu saldo? Esta ação não pode ser desfeita.';

  @override
  String get deleteAllButton => 'Excluir tudo';

  @override
  String get failedDeleteAllData =>
      'Falha ao excluir todos os dados. Tente novamente.';

  @override
  String get resetIntroConfirmDesc =>
      'Isso mostrará as telas de introdução novamente na próxima vez que você abrir o aplicativo. Seus dados permanecerão inalterados.';

  @override
  String editFieldTitle(String field) {
    return 'Editar $field';
  }

  @override
  String enterFieldHint(String field) {
    return 'Digite $field';
  }

  @override
  String statusLabel(String status) {
    return 'Status: $status';
  }

  @override
  String manageItemsTitle(String type) {
    return 'Gerenciar $type';
  }

  @override
  String noItemsFound(String type) {
    return 'Nenhum $type encontrado.';
  }

  @override
  String addItemButton(String type) {
    return 'Adicionar $type';
  }

  @override
  String editItemTitle(String type) {
    return 'Editar $type';
  }

  @override
  String itemNameLabel(String type) {
    return 'Nome de $type';
  }

  @override
  String monthlyLimitSubtitle(String budget) {
    return 'Limite mensal: $budget';
  }

  @override
  String failedResetIntro(String error) {
    return 'Falha ao redefinir a introdução. Tente novamente.\\n$error';
  }

  @override
  String get failedUpdateAutoDetection =>
      'Falha ao atualizar a detecção automática';

  @override
  String get actionCannotBeUndone => 'Esta ação não pode ser desfeita.';

  @override
  String deleteTransactionsCountTitle(int count) {
    return 'Excluir $count transações?';
  }

  @override
  String deletedTransactionsCount(int count) {
    return '$count transações excluídas';
  }

  @override
  String get transactionHistoryTitle => 'Histórico de transações';

  @override
  String get upiIdMissingTitle => 'ID UPI ausente';

  @override
  String get upiIdMissingDesc =>
      'Defina seu ID UPI nas Configurações para solicitar dinheiro via código QR.';

  @override
  String get openSettings => 'Abrir configurações';

  @override
  String get recipientFallback => 'Destinatário';

  @override
  String get paymentLinkCopied => 'Link de pagamento copiado!';

  @override
  String get linkButton => 'Link';

  @override
  String get shareQr => 'Compartilhar QR';

  @override
  String get upiPaymentLinkSubject => 'Link de pagamento UPI';

  @override
  String requestingFrom(String name) {
    return 'Solicitando de $name';
  }

  @override
  String upiIdColonValue(String id) {
    return 'ID UPI: $id';
  }

  @override
  String failedShareQr(String error) {
    return 'Falha ao compartilhar a imagem QR: $error';
  }

  @override
  String payViaUpiQrFor(String name) {
    return 'Pagar via QR UPI para $name';
  }

  @override
  String get pleaseSelectPerson => 'Por favor, selecione uma pessoa';

  @override
  String get amountInInr => 'Valor em INR';

  @override
  String get currency => 'Moeda';

  @override
  String get selectCurrency => 'Selecionar moeda';

  @override
  String get searchCurrency => 'Pesquisar moeda';

  @override
  String get autoDetectCurrency => 'Detectar moeda automaticamente';

  @override
  String get autoDetectCurrencyDesc =>
      'Corresponde automaticamente à região do seu dispositivo';

  @override
  String get popularCurrencies => 'Populares';

  @override
  String get allCurrencies => 'Todas as moedas';

  @override
  String get noCurrencyFound => 'Nenhuma moeda encontrada';

  @override
  String get requiredField => 'Obrigatório';

  @override
  String get quickCategories => 'Categorias rápidas';

  @override
  String get saveToPerson => 'Salvar na pessoa';

  @override
  String get noPeopleCreateHint =>
      'Nenhuma pessoa adicionada ainda. Crie pessoas na seção Pessoas.';

  @override
  String get selectPersonLabel => 'Selecionar pessoa';

  @override
  String get selectCategoryTitle => 'Selecionar categoria';

  @override
  String get updateTransactionButton => 'Atualizar transação';

  @override
  String get saveTransactionButton => 'Salvar transação';

  @override
  String linkedToRecord(String name) {
    return 'Vinculado ao registro de $name';
  }

  @override
  String selectItemTitle(String type) {
    return 'Selecionar $type';
  }

  @override
  String get personSingular => 'Pessoa';

  @override
  String get error => 'Erro';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get setupFailedRetry =>
      'Falha ao concluir a configuração. Tente novamente.';

  @override
  String get backButton => 'Voltar';

  @override
  String get voiceInputExampleHint => 'Diga algo como \'Gastei 500 no jantar\'';

  @override
  String get autoDetectionEnabledSuccess =>
      'Detecção automática ativada com sucesso!';

  @override
  String openingRequestQrFor(String name) {
    return 'Abrindo QR de solicitação para $name';
  }

  @override
  String get add => 'Adicionar';

  @override
  String get uncategorized => 'Sem categoria';

  @override
  String get timeLabel => 'Hora';

  @override
  String get statusColumnLabel => 'Status';

  @override
  String get completedLabel => 'Concluído';

  @override
  String get notes => 'Notas';

  @override
  String get serviceLabel => 'Serviço';

  @override
  String get refIdLabel => 'ID de referência';

  @override
  String get detectedViaLabel => 'Detectado via';

  @override
  String get attachmentsLabel => 'Anexos';

  @override
  String get originalLogLabel => 'Registro original';

  @override
  String get noNoteProvided => 'Nenhuma nota fornecida';

  @override
  String get tapToUnlock => 'Toque para desbloquear';

  @override
  String get addPeopleEmptyDesc =>
      'Adicione pessoas para rastrear transações com elas';

  @override
  String get noPeopleMatchSearch => 'Nenhuma pessoa corresponde à sua pesquisa';

  @override
  String get okay => 'Ok';

  @override
  String get confirm => 'Confirmar';

  @override
  String get ok => 'OK';

  @override
  String get unexpectedErrorOccurred => 'Ocorreu um erro inesperado';

  @override
  String get autoDetectionActive => 'Detecção automática ativa';

  @override
  String get unknownSource => 'Fonte desconhecida';

  @override
  String get noMessageContentAvailable =>
      'Nenhum conteúdo de mensagem disponível';

  @override
  String get addManually => 'Adicionar manualmente';

  @override
  String get detectedAsIncome => 'Detectado como renda';

  @override
  String get detectedAsExpense => 'Detectado como despesa';

  @override
  String sourceColonValue(String source) {
    return 'Fonte: $source';
  }

  @override
  String get sourceNotification => 'Notificação';

  @override
  String get sourceSms => 'SMS';

  @override
  String get sourceRecheckHistory => 'Histórico reverificado';

  @override
  String get sourceManualAddHistory => 'Adicionado manualmente (histórico)';

  @override
  String get recentLabel => 'Recente';

  @override
  String get oldestLabel => 'Mais antigo';

  @override
  String get highestLabel => 'Mais alto';

  @override
  String get lowestLabel => 'Mais baixo';

  @override
  String get glassBlurEffectsTitle => 'Efeitos de desfoque de vidro';

  @override
  String get glassBlurEffectsSubtitle =>
      'Desfoque suave em painéis de vidro e diálogos — usa mais poder de processamento; desative em dispositivos mais antigos para um desempenho mais suave.';

  @override
  String get tourBalanceCardTitle => 'Your Balance';

  @override
  String get tourBalanceCardDesc =>
      'Tap for income & expense details. Long-press to edit your starting balance.';

  @override
  String get tourAddIncomeTitle => 'Add Income';

  @override
  String get tourAddIncomeDesc => 'Log money you\'ve received.';

  @override
  String get tourMicTitle => 'Record by Voice';

  @override
  String get tourMicDesc =>
      'Press and hold, say the amount and what it was for, then release — it\'s saved automatically.';

  @override
  String get tourAddExpenseTitle => 'Add Expense';

  @override
  String get tourAddExpenseDesc => 'Log money you\'ve spent.';

  @override
  String get tourAddPersonTitle => 'Add a Person';

  @override
  String get tourAddPersonDesc => 'Track what you owe each other over time.';

  @override
  String get tourPersonCardTitle => 'Open Their Ledger';

  @override
  String get tourPersonCardDesc =>
      'Tap a card to see the full history with this person and settle up.';

  @override
  String get tourPayNowTitle => 'Settle Up';

  @override
  String get tourPayNowDesc => 'Pay what you owe them directly via UPI.';

  @override
  String get tourEditPersonTitle => 'Edit Person';

  @override
  String get tourEditPersonDesc => 'Change their name or photo.';

  @override
  String get tourDeletePersonTitle => 'Careful — Long-Press Deletes';

  @override
  String get tourDeletePersonDesc =>
      'Long-pressing this header permanently deletes this person and their history. You\'ll be asked to confirm first.';

  @override
  String get tourDeleteTxTitle => 'Long-Press to Delete';

  @override
  String get tourDeleteTxDesc =>
      'Tap a transaction to edit it, or long-press to delete it.';

  @override
  String get replayTipsTitle => 'Show Tips Again';

  @override
  String get replayTipsSubtitle =>
      'Replay the pointer-hint tours on Home, People, and Person Details.';

  @override
  String get replayTipsDone =>
      'Tips will show again next time you open those screens.';
}
