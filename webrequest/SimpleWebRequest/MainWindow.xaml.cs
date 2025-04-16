using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace SimpleWebRequest
{
    public partial class MainWindow : Window
    {
        private List<Product> _products = new List<Product>();
        private Product _selectedProduct;
        private bool _isAddingNew = false;

        public MainWindow()
        {
            InitializeComponent();
            // Start with empty product list
            DataContext = _products;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ProductsDataGrid.Items.Refresh();
        }

        private void AddNewButton_Click(object sender, RoutedEventArgs e)
        {
            _isAddingNew = true;
            _selectedProduct = null;
            ClearForm();
            EditForm.Visibility = Visibility.Visible;
            AddNewButton.Visibility = Visibility.Collapsed;
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            if (!decimal.TryParse(ProductPrice.Text, out decimal price))
            {
                MessageBox.Show("Please enter a valid price.");
                return;
            }

            if (string.IsNullOrWhiteSpace(ProductName.Text))
            {
                MessageBox.Show("Please enter a product name.");
                return;
            }

            var product = new Product
            {
                Name = ProductName.Text,
                Price = price,
                Description = ProductDescription.Text
            };

            if (_isAddingNew)
            {
                // Add new product with auto-incremented ID
                product.Id = _products.Count > 0 ? _products.Max(p => p.Id) + 1 : 1;
                _products.Add(product);
                _isAddingNew = false;
            }
            else if (_selectedProduct != null)
            {
                // Update existing product
                product.Id = _selectedProduct.Id;
                var index = _products.FindIndex(p => p.Id == product.Id);
                if (index >= 0)
                {
                    _products[index] = product;
                }
            }

            ProductsDataGrid.Items.Refresh();
            EditForm.Visibility = Visibility.Collapsed;
            AddNewButton.Visibility = Visibility.Visible;
            ClearForm();
            _selectedProduct = null;
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var productToDelete = button?.DataContext as Product;

            if (productToDelete == null) return;

            if (MessageBox.Show($"Are you sure you want to delete '{productToDelete.Name}'?",
                "Confirm Delete", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {
                _products.Remove(productToDelete);
                ProductsDataGrid.Items.Refresh();
            }
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            _selectedProduct = button?.DataContext as Product;

            if (_selectedProduct != null)
            {
                _isAddingNew = false;
                ProductName.Text = _selectedProduct.Name;
                ProductPrice.Text = _selectedProduct.Price.ToString();
                ProductDescription.Text = _selectedProduct.Description;
                EditForm.Visibility = Visibility.Visible;
                AddNewButton.Visibility = Visibility.Collapsed;
            }
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            EditForm.Visibility = Visibility.Collapsed;
            AddNewButton.Visibility = Visibility.Visible;
            ClearForm();
            _selectedProduct = null;
            _isAddingNew = false;
        }

        private void ClearForm()
        {
            ProductName.Text = string.Empty;
            ProductPrice.Text = string.Empty;
            ProductDescription.Text = string.Empty;
        }
    }
}