using Restaurantes.Services;
using Restaurantes.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Restaurantes
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();

            DependencyService.Register<MockDataStore>();
            MainPage = new AppShell();
        }

        protected override void OnStart()
        {
            this.MainPage.Navigation.PushAsync(new LoginPage());
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
