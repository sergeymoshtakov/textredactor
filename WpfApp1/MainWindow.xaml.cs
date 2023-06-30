using System;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;

namespace WpfApp1
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
        }

        public ICommand BoldCommand => new RelayCommand(BoldExecute);
        public ICommand ItalicCommand => new RelayCommand(ItalicExecute);
        public ICommand UnderlineCommand => new RelayCommand(UnderlineExecute);
        public ICommand ClearCommand => new RelayCommand(ClearExecute);
        public ICommand Font15Command => new RelayCommand(Font15Execute);
        public ICommand Font39Command => new RelayCommand(Font39Execute);
        public ICommand RedColorCommand => new RelayCommand(RedColorExecute);
        public ICommand GreenColorCommand => new RelayCommand(GreenColorExecute);
        public ICommand BlueColorCommand => new RelayCommand(BlueColorExecute);

        private void BoldExecute()
        {
            ApplyStyleToSelectedText(TextElement.FontWeightProperty, FontWeights.Bold);
        }

        private void ItalicExecute()
        {
            ApplyStyleToSelectedText(TextElement.FontStyleProperty, FontStyles.Italic);
        }

        private void UnderlineExecute()
        {
            ApplyStyleToSelectedText(Inline.TextDecorationsProperty, TextDecorations.Underline);
        }

        private void ClearExecute()
        {
            rtbEditor.Selection.ClearAllProperties();
        }

        private void Font15Execute()
        {
            ApplyStyleToSelectedText(TextElement.FontSizeProperty, 15);
        }

        private void Font39Execute()
        {
            ApplyStyleToSelectedText(TextElement.FontSizeProperty, 39);
        }

        private void RedColorExecute()
        {
            ApplyStyleToSelectedText(TextElement.ForegroundProperty, Brushes.Red);
        }

        private void GreenColorExecute()
        {
            ApplyStyleToSelectedText(TextElement.ForegroundProperty, Brushes.Green);
        }

        private void BlueColorExecute()
        {
            ApplyStyleToSelectedText(TextElement.ForegroundProperty, Brushes.Blue);
        }

        private void ApplyStyleToSelectedText(DependencyProperty property, object value)
        {
            if (rtbEditor.Selection.IsEmpty)
            {
                return;
            }

            if (rtbEditor.Selection.GetPropertyValue(property) is DependencyObject selectedText)
            {
                selectedText.SetValue(property, value);
            }
        }

    }

    public class RelayCommand : ICommand
    {
        private readonly Action _execute;

        public RelayCommand(Action execute)
        {
            _execute = execute;
        }

        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            _execute();
        }
    }
}
