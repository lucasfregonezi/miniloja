<?php 
namespace app\controllers;

use app\database\models\Product as ModelsProduct;
use app\library\Cart;
use app\library\View;
use app\library\Product;
use app\library\Redirect;

class CartController
{

    public function index()
    {
       View::render('cart');
    }

    public function add()
    {
        if (isset($_GET['id'])) {
            $id = strip_tags($_GET['id']);

            $productInfo = ModelsProduct::where('id', $id);
            $product = new Product;
            $product->setId($productInfo->id);
            $product->setName($productInfo->name);
            $product->setSlug($productInfo->slug);
            $product->setDescription($productInfo->description);
            $product->setPrice($productInfo->price);
            $product->setQuantity(1);
          
            $cart = new Cart;
            $cart->add($product);

            Redirect::to('/');
          }
    }

}