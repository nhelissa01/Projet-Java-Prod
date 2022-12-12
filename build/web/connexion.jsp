
<%
String nom=request.getParameter("nomUtilisateur");
String pass=request.getParameter("pass");
if(nom!=null && !nom.isBlank() && 
  pass!=null && !pass.isBlank()){
  if(nom.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("1234")){  
  // redirection avec la methode forward
  response.sendRedirect("Accueil/Accueil.jsp");
  
}else{
    request.setAttribute("message","Le nom d'utilisateur et/ou mot de passe incorrect !");
    request.getRequestDispatcher("login.jsp").forward(request, response);

  }
}

%>