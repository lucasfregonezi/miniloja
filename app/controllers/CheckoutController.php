<?php

namespace app\controllers;

use app\library\Auth;
use app\library\Cart;
use app\library\CartInfo;
use app\library\Redirect;
use Exception;
use Stripe\StripeClient;

class CheckoutController
{
    public function checkout()
    {
        try {
            if(!Auth::auth()) {
                throw new Exception("Para fazer o checkout você precisa efetuar o login no sistema");
            }
            $private_key = $_ENV['STRIPE_KEY'];
            // $private_key = 'sk_test_51HG9eAGz3EyK1lQ9JStfmcNf3dAmpvGjH1nnijXE4z6x61Nc5PH6mWCBfkgRexZO95t4TRxm943trwT7Tv0N5Asg00IaaS3h5k';

            $stripe = new StripeClient($private_key);
            $baseUrl = $_ENV['BASE_URL'];
            $items = [
              'mode' => 'payment',
              'success_url' => "{$baseUrl}/success",
              'cancel_url' => "{$baseUrl}/cancel",
            ];

            foreach (CartInfo::getCart() as $product) {
                $items['line_items'][] = [
                  'price_data' => [
                    'currency' => 'brl',
                    'product_data' => [
                      'name' => $product->getName()
                    ],
                    'unit_amount' => $product->getPrice() * 100
                  ],
                  'quantity' => $product->getQuantity()
                ];
            }

            $checkout_session = $stripe->checkout->sessions->create($items);

            Redirect::to($checkout_session->url);

        } catch(Exception $e) {
            var_dump($e->getMessage());
        }

    }
}
