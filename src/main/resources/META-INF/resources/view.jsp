<%@ include file="/init.jsp" %>

<p>
	<b><liferay-ui:message key="PokerHands.caption"/></b>
</p>
<p>Instructions:<br>
<em>
Each card has a value which is one of <b>2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace</b>, 
(denoted <b>2, 3, 4, 5, 6, 7, 8, 9, T, J, Q, K, A</b>).
Each card also has a suit which is one of <b>clubs, diamonds, hearts</b>, or <b>spades</b> (denoted <b>C, D, H</b>, and <b>S</b>).
</em>
<br>
Please enter five combinations of value and suit for each hand, e.g. <b>2C,6C,AH,KS,3S</b> for a hand of
</p>
<ul>
<li>two of clubs</li>
<li>six of clubs</li>
<li>ace of hearts</li>
<li>king of spades</li>
<li>3 of spades</li>
</ul>
<hr>
<form action="<portlet:actionURL />" method="post">
Hand 1:
<input type="text" size="2" placeholder="2C" name="<portlet:namespace />card1_1" maxlength="2" value="<%= request.getAttribute("card1_1")==null ? "" : request.getAttribute("card1_1") %>">
<input type="text" size="2" placeholder="6C" name="<portlet:namespace />card1_2" maxlength="2" value="<%= request.getAttribute("card1_2")==null ? "" : request.getAttribute("card1_2") %>">
<input type="text" size="2" placeholder="AH" name="<portlet:namespace />card1_3" maxlength="2" value="<%= request.getAttribute("card1_3")==null ? "" : request.getAttribute("card1_3") %>">
<input type="text" size="2" placeholder="KS" name="<portlet:namespace />card1_4" maxlength="2" value="<%= request.getAttribute("card1_4")==null ? "" : request.getAttribute("card1_4") %>">
<input type="text" size="2" placeholder="3S" name="<portlet:namespace />card1_5" maxlength="2" value="<%= request.getAttribute("card1_5")==null ? "" : request.getAttribute("card1_5") %>">
<hr>
Hand 2:
<input type="text" size="2" name="<portlet:namespace />card2_1" maxlength="2" value="<%= request.getAttribute("card2_1")==null ? "" : request.getAttribute("card2_1") %>">
<input type="text" size="2" name="<portlet:namespace />card2_2" maxlength="2" value="<%= request.getAttribute("card2_2")==null ? "" : request.getAttribute("card2_2") %>">
<input type="text" size="2" name="<portlet:namespace />card2_3" maxlength="2" value="<%= request.getAttribute("card2_3")==null ? "" : request.getAttribute("card2_3") %>">
<input type="text" size="2" name="<portlet:namespace />card2_4" maxlength="2" value="<%= request.getAttribute("card2_4")==null ? "" : request.getAttribute("card2_4") %>">
<input type="text" size="2" name="<portlet:namespace />card2_5" maxlength="2" value="<%= request.getAttribute("card2_5")==null ? "" : request.getAttribute("card2_5") %>">
<hr>
<input type="submit" value="Compare">
</form>
<hr>
<p>
<b><%= (String)request.getAttribute("result")==null ? "" : "Result: "+(String)request.getAttribute("result") %></b>
</p>