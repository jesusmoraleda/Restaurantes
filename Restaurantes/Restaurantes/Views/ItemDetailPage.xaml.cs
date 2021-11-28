using Restaurantes.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace Restaurantes.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}