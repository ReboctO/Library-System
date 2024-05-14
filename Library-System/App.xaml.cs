using Libary_System.View;
using System.Configuration;
using System.Data;
using System.Windows;


namespace Libary_System
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected void ApplicationStart(object sender, StartupEventArgs e)
        {
            var loginView = new MainWindow();
            loginView.Show();
            //loginView.IsVisibleChanged += (s, ev) =>
            //{
            //    if (loginView.IsVisible == false && loginView.IsLoaded)
            //    {
                  
            //    }
            //};


        }
    }

}
