package pokerhands.portlet;

import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Portlet;
import javax.portlet.PortletException;

import org.osgi.service.component.annotations.Component;

/**
 * @author Becker
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.display-name=PokerHands Portlet",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class PokerHandsPortlet extends MVCPortlet {
	
    @Override
	public void processAction(ActionRequest request, ActionResponse response)
		    throws IOException, PortletException {

    	//get post parameters
    	String card1_1 = request.getParameter("card1_1").toUpperCase();
    	String card1_2 = request.getParameter("card1_2").toUpperCase();
    	String card1_3 = request.getParameter("card1_3").toUpperCase();
    	String card1_4 = request.getParameter("card1_4").toUpperCase();
    	String card1_5 = request.getParameter("card1_5").toUpperCase();
    	String card2_1 = request.getParameter("card2_1").toUpperCase();
    	String card2_2 = request.getParameter("card2_2").toUpperCase();
    	String card2_3 = request.getParameter("card2_3").toUpperCase();
    	String card2_4 = request.getParameter("card2_4").toUpperCase();
    	String card2_5 = request.getParameter("card2_5").toUpperCase();

    	//forward parameters to view
        request.setAttribute("card1_1", card1_1);
        request.setAttribute("card1_2", card1_2);
        request.setAttribute("card1_3", card1_3);
        request.setAttribute("card1_4", card1_4);
        request.setAttribute("card1_5", card1_5);
        request.setAttribute("card2_1", card2_1);
        request.setAttribute("card2_2", card2_2);
        request.setAttribute("card2_3", card2_3);
        request.setAttribute("card2_4", card2_4);
        request.setAttribute("card2_5", card2_5);
        
        String result = "";
        
        //result
        request.setAttribute("result", result);
        
        super.processAction(request, response);
        
	}
}