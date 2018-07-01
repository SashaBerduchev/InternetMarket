using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace SERVERInternetMarket
{
    /// <summary>
    /// Логика взаимодействия для AdminLogin.xaml
    /// </summary>
    public partial class AdminLogin : Window
    {
        
        public AdminLogin()
        {
            InitializeComponent();
        }

        private void AutentificationBtn_Click(object sender, RoutedEventArgs e)
        {
            string loginstr = LoginText.Text;
            string passwordstr = PassText.Password;
            InternetMarketEDMXContainer contex = new InternetMarketEDMXContainer();
            var loginset = new Admin
            {
                NameAdmin = loginstr,
                PasswordAdmin = passwordstr
            };
            contex.AdminSet.Add(loginset);
            contex.SaveChanges();
           // MessageBox.Show( "Your admin name save, please login now", "Warning", MessageBoxButton.OK, MessageBoxImage.Information);
            LoginText.Text = null;
            PassText.Password = null;
            MainWindow main = new MainWindow();
            main.Show();
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            string loginstr = LoginText.Text;
            string passwordstr = PassText.Password;
            List<Admin> admindata;
            InternetMarketEDMXContainer contex = new InternetMarketEDMXContainer();
            admindata = contex.AdminSet.ToList();
            var log = admindata.ToString();
            if (loginstr==admindata.ToString())
            {
                MainWindow main = new MainWindow();
                main.Show();
            }
            else
            {
                MessageBox.Show("Login or password are incorrect", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }
    }
}
