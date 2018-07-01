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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace InternetMarket
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        IContract chanel;
        public MainWindow()
        {
            Uri address = new Uri("net.tcp://localhost:4000/IContract");
            NetTcpBinding binding = new NetTcpBinding();
            EndpointAddress endpoint = new EndpointAddress(address);
            ChannelFactory<IContract> factory = new ChannelFactory<IContract>(binding, endpoint);
            chanel = factory.CreateChannel();

            //caategoryproduct.ItemsSource = chanel.LoadCatStream();

            InitializeComponent();
        }

        
        private void Showbtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
