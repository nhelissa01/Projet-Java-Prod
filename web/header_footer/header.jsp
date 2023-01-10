<link href="headerStyle.css" rel="stylesheet" type="text/css"/>


<header>
    <nav id="entete">

        <div id="logo_princ">
          <img class="logo" src="../imge/logo.jpg">
        </div>

    <ul class="MenuDeroulant">
        <li><a href="../Accueil/Accueil.jsp">Accueil</a></li>
        <li><a href="#">Gestion des Produits</a>
            <ul class="sousMenu">
                <li><a href="../GestionProduit/enregistrementProduit.jsp">Enregistrer Produits</a></li>
                <li><a href="../GestionProduit/AfficherListeProduit.jsp">Afficher liste Produits</a></li>
                <li><a href="../GestionProduit/AfficherListeSousMesure.jsp">Afficher liste Sous-mesures</a></li>
                <li><a href="../GestionProduit/ModifierPrixProduit.jsp">Modifier Prix produit</a></li>

            </ul>

        </li>
        <li><a href="#">Gestion des Sous-Mesure</a>
            <ul class="sousMenu">
                <li><a href="../GestionSousMesure/AjouterSousMesure.jsp">Ajouter nouvelle sous mesure</a></li>
                <li><a href="../GestionSousMesure/AfficherListeSousMesure.jsp">Afficher liste sous-mesures</a></li>
                <li><a href="#">Supprimer sous-mesure</a></li>

            </ul>

        </li>
        <li><a href="#">Gestion des Ventes</a>
            <ul class="sousMenu">
                <li><a href="../GestionVente/enregistrementVente.jsp">Enregistrer Vente</a></li>
                <li><a href="../GestionVente/AfficherListeVente.jsp">Afficher liste Ventes effectuees</a></li>
                <li><a href="../GestionVente/AfficherListeVentePayee.jsp">Afficher la liste des ventes payees </a></li>

            </ul>

        </li>
        <li><a href="../Contact/contact">Contact</a></li>

    </ul>
    </nav>

   </header> 