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

namespace SERVERInternetMarket
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        IContract contract;
        public MainWindow()
        {
            InitializeComponent();

            

            Uri address = new Uri("net.tcp://localhost:4000/IContract"); // ADDRESS.   (A)
            // Указание привязки, как обмениваться сообщениями.
            NetTcpBinding binding = new NetTcpBinding();        // BINDING.   (B)
            // Указание контракта.
            Type contract = typeof(IContract);                        // CONTRACT.  (C) 
            // Создание провайдера Хостинга с указанием Сервиса.
            ServiceHost host = new ServiceHost(typeof(MarketServis));
            // Добавление "Конечной Точки".
            host.AddServiceEndpoint(contract, binding, address);
            // Начало ожидания прихода сообщений.
            host.Open();
        }

        private void AddData_Click(object sender, RoutedEventArgs e)
        {
            string category = categoryname.Text;
            string brend = brendname.Text;
            string name = namedata.Text;
            InternetMarketEDMXContainer chanel = new InternetMarketEDMXContainer();
            var categorynameset = new Category
            {
                NameCategory = category
            };
            chanel.CategorySet.Add(categorynameset);
           

            var brenddata = new Brend
            {
                BrandName= brend
            };
            chanel.BrendSet.Add(brenddata);
           

            var namedataset = new NameProdact
            {
                NameProduct = name
            };
            chanel.NameProdactSet.Add(namedataset);

            chanel.SaveChanges();
        }

        private void btnload_Click(object sender, RoutedEventArgs e)
        {
            DataLoad.ItemsSource = contract.LoadCatStream();
            DataLoad.ItemsSource = contract.LoadBrendStream();
            DataLoad.ItemsSource = contract.LoadNameProdStream();
        }

       
    }
}