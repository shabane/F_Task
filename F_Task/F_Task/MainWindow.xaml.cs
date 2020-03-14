using System;
using System.Collections.Generic;
using System.Linq;
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
using System.Diagnostics;
using System.Collections;
using System.Threading;
namespace F_Task
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
               
        public void PushAll() // < List All Task 
        {
            LstShow.Items.Clear();
            foreach (var Proc in Process.GetProcesses())
            {
                LstShow.Items.Add($"{Proc.ProcessName} / {Proc.Id}");
            }
        }

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            TXTSearch.Focus();
            PushAll();
        }

        // Search Items In LST
        private void TXTSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            // Search Items In LST
            if (TXTSearch.Text.Length >= 2)
            {
                Stack<string> FoundItem = new Stack<string>();

                for (int i = 0; i < LstShow.Items.Count; i++)
                {
                    string Temp = LstShow.Items[i].ToString(); // << Show The Orginal Name Of File
                    string Temp2= LstShow.Items[i].ToString().ToLower(); // << For Search Item WithOut Uper And Lower Ruls
                    if (Temp2.Contains(TXTSearch.Text))
                    {
                        FoundItem.Push(Temp);
                    }
                }

                LstShow.Items.Clear();

                foreach (var item in FoundItem)
                {
                    LstShow.Items.Add(item);
                }
            }
            else if (TXTSearch.Text.Length <= 1)
            {
                LstShow.Items.Clear();
                PushAll();
            }
        }

        // Fore Kill With Command Line <
        private void ForceKill(object sender, RoutedEventArgs e)
        {
            string[] Temp = new string[2];

            Temp = LstShow.SelectedItem.ToString().Split('/');

            string Command = $"taskkill /PID {Temp[1].Trim(' ')} -f";

            Process.Start("CMD.exe", "/k" + Command);

            LstShow.Items.Clear();
            PushAll();
        }

        // Just Simple kill <
        private void Kill(object sender, RoutedEventArgs e)
        {
            string[] Temp = new string[2]; // < get Process ID And Name  

            Temp = LstShow.SelectedItem.ToString().Split('/');

            string Command = $"taskkill /PID {Temp[1].Trim(' ')}";

            Process.Start("CMD.exe", "/k" + Command);

            LstShow.Items.Clear();
            PushAll();
        }

        //  kill by name 
        private void LKbyName(object sender, RoutedEventArgs e)
        {
            string[] Temp = new string[2]; // < get Process ID And Name Splited NAME | ID  

            Temp = LstShow.SelectedItem.ToString().Split('/');

            string PName = Temp[0].Trim(' ');

            foreach (var process in Process.GetProcessesByName(PName))
            {
                process.Kill();
            }

            LstShow.Items.Clear();
            PushAll();
        }

        private void RefreshLST(object sender, RoutedEventArgs e)
        {
            PushAll();
        }
    }
}
