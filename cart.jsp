<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout"%>
<layout:extends name="base">
    <layout:put block=" ">
        <!-- Default CSS -->

        <link rel="stylesheet" type="text/css" href="${BASE_URL}assets/css/demo2.min.css">
    </layout:put>
    <layout:put block="contents">
        <main class="main">
            <section class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content">
                                <h1 class="page-name">Cart</h1>
                                <ol class="breadcrumb">
                                    <li><a href="../index.html">Home</a></li>
                                    <li class="active">cart</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </section>



            <div class="page-wrapper">
                <div class="cart shopping">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">
                                <div class="block">
                                    <div class="product-list">
                                        <form method="post">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th class="">Item Name</th>
                                                    <th class="">Item Price</th>
                                                    <th class="">Actions</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr class="">
                                                    <td class="">
                                                        <div class="product-info">
                                                            <img width="80" src="${BASE_URL}assets/images/shop/cart/cart-1.jpg" alt="" />
                                                            <a href="#!">Sunglass</a>
                                                        </div>
                                                    </td>
                                                    <td class="">$200.00</td>
                                                    <td class="">
                                                        <a class="product-remove" href="#!">Remove</a>
                                                    </td>
                                                </tr>
                                                <tr class="">
                                                    <td class="">
                                                        <div class="product-info">
                                                            <img width="80" src="${BASE_URL}assets/images/shop/cart/cart-2.jpg" alt="" />
                                                            <a href="#!">Airspace</a>
                                                        </div>
                                                    </td>
                                                    <td class="">$200.00</td>
                                                    <td class="">
                                                        <a class="product-remove" href="#!">Remove</a>
                                                    </td>
                                                </tr>
                                                <tr class="">
                                                    <td class="">
                                                        <div class="product-info">
                                                            <img width="80" src="${BASE_URL}assets/images/shop/cart/cart-3.jpg" alt="" />
                                                            <a href="#!">Bingo</a>
                                                        </div>
                                                    </td>
                                                    <td class="">$200.00</td>
                                                    <td class="">
                                                        <a class="product-remove" href="#!">Remove</a>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <a href="checkout.html" class="btn btn-main pull-right">Checkout</a>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>






        </main>
    </layout:put>
</layout:extends>
