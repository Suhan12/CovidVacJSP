<html>
	<body>

<head>
<link rel="stylesheet" href="css/pay.css">
</head>
<form class="checkout" action="rest.jsp">
    <div class="checkout-header">
      <h1 class="checkout-title">
        Checkout
        <%String vc1=session.getAttribute("vc1").toString();%>
        <span class="checkout-price">Rs.<%=vc1%></span>
      </h1>
    </div>
    <p>
      <input type="text" class="checkout-input checkout-name" placeholder="Your name">
      <input type="text" class="checkout-input checkout-exp" placeholder="MM">
      <input type="text" class="checkout-input checkout-exp" placeholder="YY">
    </p>
    <p>
      <input type="text" class="checkout-input checkout-card" placeholder="4111 1111 1111 1111">
      <input type="text" class="checkout-input checkout-cvc" placeholder="CVC">
    </p>
    <p>
      <input type="submit" value="Purchase" class="checkout-btn">
    </p>
  </form>


	</body>
</html>


