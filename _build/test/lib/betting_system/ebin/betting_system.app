{application,betting_system,
    [{compile_env,
         [{betting_system,['Elixir.BettingSystemWeb.Gettext'],error}]},
     {applications,
         [kernel,stdlib,elixir,logger,runtime_tools,bcrypt_elixir,phoenix,
          phoenix_ecto,ecto_sql,myxql,phoenix_html,phoenix_live_view,floki,
          phoenix_live_dashboard,swoosh,telemetry_metrics,telemetry_poller,
          gettext,jason,plug_cowboy,secure_random,ex_fontawesome]},
     {description,"betting_system"},
     {modules,
         ['Elixir.BettingSystem','Elixir.BettingSystem.Accounts',
          'Elixir.BettingSystem.Accounts.User',
          'Elixir.BettingSystem.Accounts.UserNotifier',
          'Elixir.BettingSystem.Accounts.UserToken',
          'Elixir.BettingSystem.AccountsFixtures',
          'Elixir.BettingSystem.Application','Elixir.BettingSystem.Bet',
          'Elixir.BettingSystem.Bet.Bets','Elixir.BettingSystem.BetFixtures',
          'Elixir.BettingSystem.Betslips',
          'Elixir.BettingSystem.Betslips.Betslip',
          'Elixir.BettingSystem.BetslipsFixtures',
          'Elixir.BettingSystem.DataCase','Elixir.BettingSystem.Games',
          'Elixir.BettingSystem.Games.Game',
          'Elixir.BettingSystem.GamesFixtures','Elixir.BettingSystem.Mailer',
          'Elixir.BettingSystem.Repo','Elixir.BettingSystem.Sports',
          'Elixir.BettingSystem.Sports.Sport',
          'Elixir.BettingSystem.SportsFixtures','Elixir.BettingSystem.Users',
          'Elixir.BettingSystemWeb',
          'Elixir.BettingSystemWeb.BetsLive.FormComponent',
          'Elixir.BettingSystemWeb.BetsLive.Index',
          'Elixir.BettingSystemWeb.BetsLive.Show',
          'Elixir.BettingSystemWeb.BetslipLive.FormComponent',
          'Elixir.BettingSystemWeb.BetslipLive.Index',
          'Elixir.BettingSystemWeb.BetslipLive.Show',
          'Elixir.BettingSystemWeb.ChannelCase',
          'Elixir.BettingSystemWeb.ConnCase',
          'Elixir.BettingSystemWeb.Endpoint',
          'Elixir.BettingSystemWeb.ErrorHelpers',
          'Elixir.BettingSystemWeb.ErrorView',
          'Elixir.BettingSystemWeb.GameLive.FormComponent',
          'Elixir.BettingSystemWeb.GameLive.Index',
          'Elixir.BettingSystemWeb.GameLive.Show',
          'Elixir.BettingSystemWeb.Gettext',
          'Elixir.BettingSystemWeb.LayoutView',
          'Elixir.BettingSystemWeb.LiveHelpers',
          'Elixir.BettingSystemWeb.PageController',
          'Elixir.BettingSystemWeb.PageView','Elixir.BettingSystemWeb.Router',
          'Elixir.BettingSystemWeb.Router.Helpers',
          'Elixir.BettingSystemWeb.SportLive.FormComponent',
          'Elixir.BettingSystemWeb.SportLive.Index',
          'Elixir.BettingSystemWeb.SportLive.Show',
          'Elixir.BettingSystemWeb.Telemetry',
          'Elixir.BettingSystemWeb.UserAuth',
          'Elixir.BettingSystemWeb.UserConfirmationController',
          'Elixir.BettingSystemWeb.UserConfirmationView',
          'Elixir.BettingSystemWeb.UserLive.FormComponent',
          'Elixir.BettingSystemWeb.UserLive.Index',
          'Elixir.BettingSystemWeb.UserLive.Show',
          'Elixir.BettingSystemWeb.UserRegistrationController',
          'Elixir.BettingSystemWeb.UserRegistrationView',
          'Elixir.BettingSystemWeb.UserResetPasswordController',
          'Elixir.BettingSystemWeb.UserResetPasswordView',
          'Elixir.BettingSystemWeb.UserSessionController',
          'Elixir.BettingSystemWeb.UserSessionView',
          'Elixir.BettingSystemWeb.UserSettingsController',
          'Elixir.BettingSystemWeb.UserSettingsView',
          'Elixir.Inspect.BettingSystem.Accounts.User']},
     {registered,[]},
     {vsn,"0.1.0"},
     {mod,{'Elixir.BettingSystem.Application',[]}}]}.
