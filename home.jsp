
  Created by IntelliJ IDEA.
  User: User
  Date: 8/29/2025
  Time: 7:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Girlyme</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
    <script src="../hamburger.js" defer></script>
</head>
<body>

<!-- Header / Navbar -->

<header>
    <nav class="navbar navbar-expand-lg navbar-light shadow-sm" style="background: #ffffff;">
        <div class="container">

            <!-- Logo -->
            <a class="navbar-brand fw-bold d-flex align-items-center" href="#">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQliManibsMJUroXzSkgLIOqqwH0bkrlgoSGg&s" alt="Logo" width="35" class="me-2">
                <span style="color:#a538a7;">GirlyMe</span>
            </a>

            <!-- Mobile Menu Toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navigation + Search + Cart -->
            <div class="collapse navbar-collapse" id="navMenu">

                <!-- Nav Items -->
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Product</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                </ul>

                <!-- Search Bar -->
                <form class="d-flex me-3">
                    <input class="form-control rounded-pill px-3" type="search" placeholder="Search skincare..." aria-label="Search">
                </form>

                <!-- Add to Cart Button -->
                <a href="#" class="btn rounded-pill px-3 text-white" style="background-color: #8e44ad;">
                    <i class="bi bi-cart me-1"></i> Add to Cart
                </a>
            </div>
        </div>
    </nav>
</header>



<!-- About Section -->
<section class="about my-5">
    <div class="container text-center bg-white p-4 rounded shadow-sm">
        <p>One of the best ways to care for your skin is with a daily routine that addresses your skin’s
            unique needs. The right skincare routine for your skin type can help keep your complexion
            looking healthy, hydrated, and radiant while keeping skin concerns like dryness at bay.</p>
    </div>
</section>


<div class="container my-5">
    <div class="row align-items-center g-4">

        <!-- Left Image -->
        <div class="col-md-6 img-left">
            <img src="https://www.skincare.com/-/media/project/loreal/brand-sites/sdc/americas/us/articles/2025/jun/sdc-skin-detox-header.jpg?cx=0.670000016689301&cy=0.490000009536743&cw=800&ch=490&blr=False&hash=E8AAE16F86537836C50191788344246C" alt="Skin Care" class="img-fluid w-100">
        </div>

        <!-- Right Content -->
        <div class="col-md-6">
            <div class="content-section">
                <p class="text-uppercase text-muted small">Skin Care Advice</p>
                <h2 class="article-title">Skin Detox: What It Really Means and How To Do It Right</h2>
                <div class="divider"></div>
                <p class="article-date">6/30/2025</p>
            </div>
        </div>

        <!-- Skincare Routines -->
        <div class="container my-5">
            <h2 class="mb-4">Skincare Routines</h2>
            <div class="row g-4">

                <!-- Card 1 -->
                <div class="col-md-4">
                    <div class="card h-100 shadow-sm">
                        <img src="https://n.nordstrommedia.com/it/c19af2c9-7577-45f9-ae8d-290276c6983d.jpeg?h=600&w=750" class="card-img-top" alt="Combination Skin Routine">
                        <div class="card-body">
                            <h4 class="text-muted small">SKINCARE ROUTINES</h4>
                            <h3 class="h5">A Balanced Skincare Routine for Combination Skin</h3>
                            <p>Effective cleansing and hydration is the key to caring for skin that's oily or normal in some places – and dry in others.
                                This routine helps maintain that balance.</p>
                        </div>
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="col-md-4">
                    <div class="card h-100 shadow-sm">
                        <img src="https://www.skincare.com/-/media/project/loreal/brand-sites/sdc/americas/us/articles/2025/mar/sdc_-skincare-routine-for-dry-skin.jpg" class="card-img-top" alt="Dry Skin Routine">
                        <div class="card-body">
                            <h4 class="text-muted small">SKINCARE ROUTINES</h4>
                            <h3 class="h5">A Nourishing Skincare Routine For Dry Skin</h3>
                            <p>Relief from dry, tight, or dull skin can often be achieved by simply changing your
                                skincare routine. An easy-to-follow plan can revive your skin’s glow.</p>
                        </div>
                    </div>
                </div>

                <!-- Card 3 -->
                <div class="col-md-4">
                    <div class="card h-100 shadow-sm">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0hbY5rZcV1DxVTE06IRk8p4henKViVWa4EA&s" class="card-img-top" alt="Anti-Aging Routine">
                        <div class="card-body">
                            <h4 class="text-muted small">SKINCARE ROUTINES</h4>
                            <h3 class="h5">A Simple Anti-Aging Skincare Routine</h3>
                            <p>A simple routine using the right products will help improve the vi
                                sible signs of aging, including the appearance of fine lines and dullness.</p>
                        </div>
                    </div>
                </div>

            </div>

            <div class="text-center mt-4">
                <a href="#" class="btn" style="background:#6a1b9a; color:#fff;">SEE OTHERS</a>
            </div>
        </div>



        <div id="skincareCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="6000">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#skincareCarousel" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#skincareCarousel" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#skincareCarousel" data-bs-slide-to="2"></button>
            </div>

            <div class="carousel-inner">

                <!-- Slide 1 -->
                <div class="carousel-item active slide-1">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 text-center">
                                <img src="cleanser.jpg" class="img-fluid rounded shadow" alt="Cleanser">
                            </div>
                            <div class="col-md-6 carousel-content">
                                <h5>CLEANSERS</h5>
                                <h2>Find Your Cleanser</h2>
                                <p>Take this quiz to discover the best Kiehl’s cleanser for your skin type.</p>
                                <button class="btn btn-outline-dark">FIND OUT MORE</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slide 2 -->
                <div class="carousel-item slide-2">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 text-center">
                                <img src="skincare-tips.jpg" class="img-fluid rounded shadow" alt="Skincare Tips">
                            </div>
                            <div class="col-md-6 carousel-content">
                                <h5>LEARN MORE ABOUT SKINCARE</h5>
                                <h2>Want More Skincare Tips?</h2>
                                <p>We’re here to answer all your skincare questions — from how to use hyaluronic acid to if you really need an eye cream in your routine.</p>
                                <button class="btn btn-outline-dark">FIND OUT MORE</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slide 3 -->
                <div class="carousel-item slide-3">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 text-center">
                                <img src="https://prequelskin.com/cdn/shop/articles/skincare_routine_options_by_skin_type_17baef3f-f455-4c45-914f-9c75124d0ba4.jpg?v=1748985448" class="img-fluid rounded shadow" alt="Podcast">
                            </div>
                            <div class="col-md-6 carousel-content">
                                <h5>ALL EXPERT ADVICE</h5>
                                <h2>The Skin Goals Podcast</h2>
                                <p>Your one-stop destination for all things skincare - embark on an exciting journey through the world of skincare, with expert insights and science-backed advice.</p>
                                <button class="btn btn-outline-dark">FIND OUT MORE</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#skincareCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#skincareCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>





        <!-- Routine Selector -->
        <section class="routine-selector my-5">
            <div class="container bg-white p-4 rounded shadow-sm text-center">
                <h2>Which Skin Care Routine is Right for You?</h2>
                <p class="intro">Everyone’s skin is different. Choose your skin type below to discover
                    a personalized routine that suits your needs.</p>

                <div class="row g-3 mt-3">
                    <div class="col-md-3 col-sm-6">
                        <div class="p-3 bg-light rounded shadow-sm">
                            <h3>Oily Skin</h3>
                            <p>Gentle cleanser, oil-free moisturizer, and non-comedogenic sunscreen.</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="p-3 bg-light rounded shadow-sm">
                            <h3>Dry Skin</h3>
                            <p>Hydrating cleanser, thick moisturizer, and ceramide-based cream.</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="p-3 bg-light rounded shadow-sm">
                            <h3>Combination Skin</h3>
                            <p>Balancing cleanser, light moisturizer, and hydration-focused care.</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="p-3 bg-light rounded shadow-sm">
                            <h3>Sensitive Skin</h3>
                            <p>Fragrance-free products with soothing ingredients like aloe or oat.</p>
                        </div>
                    </div>
                </div>

                <div class="mt-4">
                    <a href="quiz.html" class="btn border border-2" style="border-color:#6a1b9a; color:#6a1b9a;">Take the Skin Type Quiz</a>
                </div>
            </div>
        </section>

        <!-- Product Categories -->

        <div class="container my-5">
            <div id="productCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">

                    <!-- Slide 1 -->
                    <div class="carousel-item active">
                        <div class="row text-center g-4">

                            <!-- Product 1 -->
                            <div class="col">
                                <div class="product-card">
                                    <img src="https://www.biovenebarcelona.com/cdn/shop/files/8436575090078_4.2_HYALURONICACID_BV-HYS18.jpg?v=1687631482&width=1100" alt="Hyaluronic Acid">

                                    <div class="product-title">Hyaluronic Acid</div>
                                    <div class="product-desc">Brightens, highlights +protects</div>
                                    <div class="product-price">Rs. 2590</div>

                                    <button class="btn btn-add">ADD TO CART</button>
                                </div>
                            </div>

                            <!-- Product 2 -->
                            <div class="col">
                                <div class="product-card">
                                    <img src="https://the-apothecary.co.nz/wp-content/uploads/2015/08/salicylic-acid-gel-50ml.jpg" alt="Exfoliating Gel">
                                    <h6>Exfoliating Gel</h6>
                                    <div class="product-title">Exfoliating Gel</div>
                                    <div class="product-desc">visibly lifts + sculpts</div>

                                    <div class="product-price">Rs. 1150</div>

                                    <button class="btn btn-add">ADD TO CART</button>
                                </div>
                            </div>

                            <!-- Product 3 -->
                            <div class="col">
                                <div class="product-card">
                                    <img src="https://www.epharmacy.com.np/content/images/thumbs/65263dc3e0498d9868cd63aa_the-derma-co-2-salicylic-acid-face-serum-10ml.jpeg" alt="Salicylic Acid">

                                    <div class="product-title">Salicylic Acid</div>
                                    <div class="product-desc">tightens, tones, sculpts</div>

                                    <div class="product-price">Rs. 950</div>

                                    <button class="btn btn-add">ADD TO CART</button>
                                </div>
                            </div>

                            <!-- Product 4 -->
                            <div class="col">
                                <div class="product-card">
                                    <img src="https://i5.walmartimages.com/seo/The-Ordinary-Niacinamide-10-Zinc-1-Serum-1-oz_81dcf5ff-5ba7-4848-861b-5d2b2d598de7.71104854b4cfdafc3c56a544c1ab9ee4.jpeg" alt="Niacinamide + Zinc">

                                    <div class="product-title">Niacinamide + Zinc</div>
                                    <div class="product-desc">treats + helps prevent stressed skin</div>

                                    <div class="product-price">Rs. 1900</div>

                                    <button class="btn btn-add">ADD TO CART</button>
                                </div>
                            </div>

                            <!-- Product 5 -->
                            <div class="col">
                                <div class="product-card">
                                    <img src="https://www.biovenebarcelona.com/cdn/shop/files/8436575090078_4.2_HYALURONICACID_BV-HYS18.jpg?v=1687631482&width=1100" alt="Hyaluronic Acid">

                                    <div class="product-title">Hyaluronic Acid</div>
                                    <div class="product-desc">brightens, hydrates + protects</div>

                                    <div class="product-price">Rs. 2550</div>
                                    <button class="btn btn-add">ADD TO CART</button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>



                <!-- Carousel Controls -->
                <button class="carousel-control-prev" type="button" data-bs-target="#productCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#productCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>
            </div>
        </div>



        <footer>
            <div class="container">
                <div class="row">

                    <!-- Left Column -->
                    <div class="col-md-4 mb-4">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQliManibsMJUroXzSkgLIOqqwH0bkrlgoSGg&s" alt="Girlyme Logo" class="mb-3" style="height:40px;">
                        <p>Girlyme </p>
                        <p>Kathmandu, Nepal</p>
                    </div>

                    <!-- Middle Column -->
                    <div class="col-md-4 mb-4">
                        <h5 class="fw-bold text-white">Get to Know Us</h5>
                        <ul class="list-unstyled">
                            <li><a href="#">About Us</a></li>

                        </ul>
                    </div>

                    <!-- Right Column -->
                    <div class="col-md-4 mb-4">
                        <h5 class="fw-bold text-white">Connect with Us</h5>
                        <div class="d-flex gap-2 social-icons mb-3">
                            <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/733/733547.png" alt="Facebook"></a>
                            <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/2111/2111463.png" alt="Instagram"></a>
                            <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/1384/1384060.png" alt="YouTube"></a>
                        </div>
                        <h6 class="fw-bold text-white">For any Help You may Call us at</h6>
                        <p>+977 97011-34460 📞 WhatsApp</p>
                        <p>01-5975630</p>
                        <p>(Sun to Fri, 9AM to 6PM)</p>
                    </div>
                </div>

                <!-- Footer Bottom -->
                <div class="footer-bottom">
                    <a href="#">Terms & Conditions</a> |
                    <a href="#">Policies</a> |
                    © 2025, girlyme.com
                </div>
            </div>
        </footer>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>

