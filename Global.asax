<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script RunAt="server">


    public void Routing(RouteCollection routes)
    {
        #region Front_End pages
        routes.MapPageRoute("home", "Home", "~/Index.aspx");
        routes.MapPageRoute("product", "Home/{name}/{id}", "~/{name}.aspx", true, new RouteValueDictionary { { "id", string.Empty } });
        #endregion

        #region Account pages
        routes.MapPageRoute("Login", "Account", "~/Accounts/LogIn.aspx");
        routes.MapPageRoute("newaccount", "Account/{name}", "~/Accounts/{name}.aspx");
        routes.MapPageRoute("Details", "Account/NewAccount/{name}", "~/Accounts/{name}.aspx");
        #endregion

        #region Back_End pages
        routes.MapPageRoute("adlogin", "AdLogin", "~/Admin/AdLogin.aspx");
        routes.MapPageRoute("info", "{name}", "~/Admin/{name}.aspx");
        routes.MapPageRoute("changeinfo", "{name1}/{name2}", "~/Admin/{name2}.aspx", true, new RouteValueDictionary { {"name1",string.Empty } });
        #endregion

    }

    void Application_Start(object sender, EventArgs e)
    {
        Routing(RouteTable.Routes);
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
