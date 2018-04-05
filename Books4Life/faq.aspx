<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="description" content="Books4LifeUSA" />
    <meta name="keywords" content="Books4LifeUSA,Books4Life,Books,4Life,BooksUSA,faq" />
    <meta name="author" content="K. S. Sailesh Kumar" />
    <link rel="stylesheet" href="styles.css"/>
    <title>FAQ - Books 4 Life @ USA</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
	
	<%--Check to see if the window is top if not then display button--%>
	$(window).scroll(function(){
		if ($(this).scrollTop() > 500) {
			$('.scrollToTop').fadeIn();
		} else {
			$('.scrollToTop').fadeOut();
		}
	});
	
	<%--Click event to scroll to top--%>
	$('.scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},800);
		return false;
	});
	
    });

        </script>
</head>

<body> <%--Frequently Asked Questions--%>
    <div>
     <header>
         
        <hgroup>
            <h1>Books4LifeUSA.com</h1>
            <h3>Sell Your Books Right Here!!!</h3>
        </hgroup>

        <div id="contactHelp">

            <ul class="removeBullet">

                <li>Have Questions ?</li>
                <li>We can help you:</li>
                <li>CALL us at: 18-BOOKS4LIFE</li>
                <li>E-mail us: help@books4lifeusa.com</li>

            </ul>

        </div>
         
    </header>

    <nav>
        <ul>
            <li><a href="faq.aspx">FAQ</a></li>
            <li><a href="contactUs.aspx">CONTACT US</a></li>
            <li><a href="#">YOUR ACCOUNT</a></li>
            <li><a href="#">WHAT YOU SOLD ?</a></li>
            <li><a href="LoginOrRegister.aspx">REGISTER</a></li>
            <li><a href="LoginOrRegister.aspx">LOGIN</a></li>
        </ul>
    </nav>
        </div>

    <div>
    <section class="faqSection">
        <div id="faqHead">
            <h1>FAQ</h1>
            <p>Below are some of our frequently asked questions. If you still cannot find an answer you are looking for please <a href="contactUs.aspx" style="color:blue">contact us</a></p>
        </div>

        <hr />

        <div id="faqQuestions">

            <h2 class="faqHead"><a href="#faqTitle1" style="text-decoration: none; border-bottom: 1px solid black;">ISBN's</a></h2>
               <ul>
                   <li><a href="#faqTitle1Ques1">What is an ISBN?</a></li>
                   <li><a href="#faqTitle1Ques2">Where can I fnd the ISBN of my book?</a></li>
                   <li><a href="#faqTitle1Ques3">What does an ISBN look like?</a></li>
                   <li><a href="#faqTitle1Ques4">Do you buy books without ISBNs?</a></li>
               </ul>
            
            <h2 class="faqHead"><a href="#faqTitle2" style="text-decoration: none; border-bottom: 1px solid black;">Types of Books</a></h2>
                <ul>
                    <li><a href="#faqTitle2Ques1">What types of books do you buy?</a></li>
                    <li><a href="#faqTitle2Ques2">What types of books do you NOT buy?</a></li>
                    <li><a href="#faqTitle2Ques3">Do you buy items marked Not For Resale?</a></li>
                    <li><a href="#faqTitle2Ques4">Will you buy large quantities of books?</a></li>
                    <li><a href="#faqTitle2Ques5">Will you buy several copies of a given book?</a></li>
                </ul>

            <h2 class="faqHead"><a href="#faqTitle3" style="text-decoration: none; border-bottom: 1px solid black;">Book Condition</a></h2>
                <ul>
                    <li><a href="#faqTitle3Ques1">What sort of physical comndition should the books be in?</a></li>
                    <li><a href="#faqTitle3Ques2">What happens if you do not accept one or more of my books?</a></li>
                </ul>

            <h2 class="faqHead"><a href="#faqTitle4" style="text-decoration: none; border-bottom: 1px solid black;">Getting Paid</a></h2>
                <ul>
                    <li><a href="#faqTitle4Ques1">When and how do I get paid?</a></li>
                    <li><a href="#faqTitle4Ques2">How long does it take to get paid?</a></li>
                </ul>

            <h2 class="faqHead"><a href="#faqTitle5" style="text-decoration: none; border-bottom: 1px solid black;">Shipping</a></h2>
                <ul>
                    <li><a href="#faqTitle5Ques1">Who pays for Shipping??</a></li>
                    <li><a href="#faqTitle5Ques2">What if I want to ship my items through a different carrier?</a></li>
                    <li><a href="#faqTitle5Ques3">Should I pay for insurance on my package of books?</a></li>
                    <li><a href="#faqTitle5Ques4">What happens if I don't include some of the books on the packaging slip?</a></li>
                    <li><a href="#faqTitle5Ques5">What happens if you don't receive my books?</a></li>
                </ul>

        </div>

        <hr />

        <div id="faqAnswers">

            <h2 id="faqTitle1" ><span class ="faqTitleUnderline">ISBNs</span></h2>

            <div class="faqAns">
            
                <p id="faqTitle1Ques1" class="questionFAQ">Q: What is an ISBN?</p>
                <p class="AnswerFAQ">ISBN is an abbreviation for “International Standard Book Number”. It's the standardized identification system for books and other media.</p>

                <p id="faqTitle1Ques2" class="questionFAQ">Q: Where can I find the ISBN of my book?</p>
                <p class="AnswerFAQ">Publishers typically puts the ISBN on the back cover of the book, usually above or near the barcode. They are also shown on the copyright information page within the first few pages of the book. If the item is a single volume and part of a set, this would be a good place to look, as it shows the ISBN of each volume.</p>
            
                <p id="faqTitle1Ques3" class="questionFAQ">Q: What does an ISBN look like?</p>
                <p class="AnswerFAQ">Usually the letters ISBN will be printed followed by a number with sections separated by hyphens, e.g. ISBN 0-89123-145-2</p>
            
                <p id="faqTitle1Ques4" class="questionFAQ">Q: Do you buy books without ISBNs?</p>
                <p class="AnswerFAQ">We do not buy books without ISBNs, as it is generally difficult to determine a price for the item.</p>
            
            </div>
            
            <h2 id="faqTitle2" ><span class ="faqTitleUnderline">Types of Books</span></h2>

            <div class="faqAns">

                <p id="faqTitle2Ques1" class="questionFAQ">Q: What types of books do you buy?</p>
                <p class="AnswerFAQ">We buy books that meet our condition standards, are available for resale and have at least a little market value. Our pricing page will tell you whether we are buying a specific book once you've entered the ISBN. Items that we typically do not buy are: Older books, books without ISBNs, encyclopedia sets, magazines, music books, comic books, books that are marked as “not for resale,” books that are in poor condition, outdated text books, etc.</p>
            
                <p id="faqTitle2Ques2" class="questionFAQ">Q: What types of books do you NOT buy?</p>
                <p class="AnswerFAQ">We do not buy</p>                   
                 <ul  class="AnswerFAQ">
                        <li>International Edition Textbooks</li>
                        <li>Instructor Edition Textbooks</li>
                        <li>Examination copies</li>
                        <li>Teacher's Edition</li>
                        <li>Advanced Readers Copy (ARC)</li>
                        <li>Items without an ISBN printed on the book</li>
                        <li>Items that are sexually explicit and/or offensive</li>
                        <li>Non book items such as Calendars and board games (even though they may have an ISBN)</li>
                        <li>Encyclopedia Sets</li>
                    </ul>

                <p id="faqTitle2Ques3" class="questionFAQ">Q: Do you buy items marked Not for Resale?</p>
                <p class="AnswerFAQ">No we do not buy any items marked not for resale, for example, but not limited to advanced readers copies, international editions, instructors editions, and examination copies. This information is often hidden by heavy use of tape and stickers, so be cautious. They will be rejected upon arrival.</p>
                
                <p id="faqTitle2Ques4" class="questionFAQ">Q: Will you buy large quantities of books?</p>
                <p class="AnswerFAQ">We do buy books in bulk. Please contact us about letting us know the books that you have and amount you are interested in selling. Include the ISBN of each title and quantity of each title - if you could put the information into a table such as Microsoft Excel (MS Excel 2007 or earlier) that would be appreciated. We will let you know if we are willing to buy the items and how many.</p>
                
                <p id="faqTitle2Ques5" class="questionFAQ">Q: Will you buy several copies of a given book?</p>
                <p class="AnswerFAQ">We do buy multiple copies of the same book. How many depends on the demands of our buyers. If you have more than one copy of any book, please email us to see if we are buying them and how many. Include in the email the title, the ISBN and the quantity of each title. Also, if you already have an order number created, include that as well.</p>

            </div>
            
            <h2 id="faqTitle3" ><span class ="faqTitleUnderline">Book Condition</span></h2>

            <div class="faqAns">

                <p id="faqTitle3Ques1" class="questionFAQ">Q: What sort of physical condition should the books be in?</p>
                <p class="AnswerFAQ">Books must be in very good condition which means that books must meet the following criteria:</p>
                <ul class="AnswerFAQ">
                    <li>No tears and minimal wear to the cover, or pages.</li>
                    <li>Corners of covers should not be bent, dented or frayed</li>
                    <li>Minimal wear to the binding - pages should be firmly attached to the binding - bindings cannot be broken<</li>
                    <li>A small amount of writing, underlining or highlighting of pages is okay, as long as it is on fewer than 30% of the book's pages. However, workbooks and study guides must be clean and unwritten in (no answers filled in already)</li>
                    <li>No missing pages</li>
                    <li>No liquid damage – warped, wavy pages are a sign of liquid damage</li>
                    <li>No fire or smoke damage</li>
                    <li>No strong odor of any kind (including musty or cigarette odor, for example)</li>
                    <li>If book originally came with a CD-Rom, the original CD-Rom must accompany the book when shipped to us. The CD must be in working condition</li>
                    <li>No advance reading copies, uncorrected proofs, and/or promotional or screener copies of books</li>
                    <li>No partial sets (ie, only sending volume 1 of a 2 volume set). Please make sure you use the correct ISBN if it is a single volume and/or full set! This is a common error!</li>
                    <li>No items with the access code exposed. This includes standalone items (for example an item that is an access code for online class like Mathlab) as well as items which include a supplementary access code (for example a textbook packaged with an associated access code for an accompanying online class).</li>
                </ul>
                <p class="AnswerFAQ">Items we receive that do not meet these requirements are not eligible for payment. The quote will be deducted from the total amount - so please make good judgment when assessing your items and please pack your books carefully.</p>

                <p id="faqTitle3Ques2" class="questionFAQ">Q: What happens if you do not accept one or more of my books?</p>
                <p class="AnswerFAQ">We will inform you immediately of any issues via email. Issues will put your payment on hold until they are resolved by your response. We will either recycle the item and deduct the quote from the total, or send the item(s) back for a return processing fee of $3.99. This fee can be deducted directly from your total quote, or sent via PayPal.</p>
                <p class="AnswerFAQ">To ensure that books are not damaged please follow these guidelines:</p>
                <ul class="AnswerFAQ">
                    <li>Use a sturdy box. Thin boxes (e.g., cereal boxes) may not protect your books in shipment.</li>
                    <li>Do not use packing peanuts for packing material. Packing peanuts shift during transit, damage pages and often become crushed by the weight of the books during shipment! A large amount of shipments we've received using packing peanuts result in several damaged books.</li>
                    <li>Choose the right size of box. Huge boxes of books nearly always result in damaged books</li>
                    <li>Keep the weight of each box and books under 35lbs. Heavy boxes nearly always result in damaged books</li>
                    <li>Use wadded up newspaper to fill gaps. Newspaper can be wadded up tightly and provide protection</li>
                </ul>

            </div>
            
            <h2 id="faqTitle4" ><span class ="faqTitleUnderline">Getting Paid</span></h2>

            <div class="faqAns">

                <p id="faqTitle4Ques1" class="questionFAQ">Q: When and how do I get paid?</p>
                <p class="AnswerFAQ">When we receive the box of books and confirm its contents against the order, we process your payment in our next PayPal or check run (usually within 2 business days after the order is processed)</p>
                
                <p id="faqTitle4Ques2" class="questionFAQ">Q: How long does it take to get paid?</p>
                <p class="AnswerFAQ">Since we are unable to pay you until we receive your items, the real variable in the amount of time to get paid is the transit times. If you choose to ship using our FedEx Service we will receive your items in 2-5 days. If you choose the USPS media mail option we will receive your items in 7-21 days. We attempt to check in all books within two business days of arrival, although this may take longer depending on the number of orders we receive at any given time. For quickest payment use PayPal!</p>
            
            </div>            
            
            <h2 id="faqTitle5" ><span class ="faqTitleUnderline">Shipping</span></h2>

            <div class="faqAns">
                
                <p id="faqTitle5Ques1" class="questionFAQ">Q: Who pays for Shipping?</p>
                <p class="AnswerFAQ">Shipping is always 100% free when you use one the shipping label provided after checkout!</p>
                
                <p id="faqTitle5Ques2" class="questionFAQ">Q: What if I want to ship my items through a different carrier?</p>
                <p class="AnswerFAQ">We will gladly accept your packages no matter how you decide to ship them to us. However if you decide not to use our free shipping label, you will be responsible for the shipping costs.</p>
                
                <p id="faqTitle5Ques3" class="questionFAQ">Q: Should I pay for insurance on my package of books?</p>
                <p class="AnswerFAQ">Insurance is included with our pre-paid shipping label up to $100 dollars.</p>
                
                <p id="faqTitle5Ques4" class="questionFAQ">Q: What happens if I don't include some of the books on the packing slip?</p>
                <p class="AnswerFAQ">We'll contact you via email to confirm that the books were not shipped. If you purchased insurance and your package is missing books we will work with you to recover the cost of the books from the postal service. Only the sender of items (in this case, you) can recover the cost from the postal service. We will help you by providing an accurate accounting of the value.</p>
                
                <p id="faqTitle5Ques5" class="questionFAQ">Q: What happens if you don't receive my books?</p>
                <p class="AnswerFAQ">If we can verify that you shipped out the items and you used our Free label - we will file a claim on your behalf with the shipping carrier.</p>
            
            </div>

        </div>

    </section>
    </div>

    <a href="#" class="scrollToTop">SCROLL TO TOP</a>

    <%--Scroll to top functionality from--%>
    <%--http://www.paulund.co.uk/how-to-create-an-animated-scroll-to-top-with-jquery--%>

</body>
</html>
