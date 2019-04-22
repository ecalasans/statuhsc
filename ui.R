#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shinydashboard)

dashboardPage(
    header <- dashboardHeader(
        title = "StatUHSC"
    ),
    
    sidebar <- dashboardSidebar(
        sidebarMenu(
            menuItem("Identificação", tabName = "id"),
            menuItem("Dados Maternos", tabName = "dados_maternos"),
            menuItem("Dados do Parto", tabName = "dados_parto"),
            menuItem("Dados do Internamento", tabName = "dados_internamento",
                     menuSubItem("Dados de Entrada", tabName = "di_dados_entrada"),
                     menuSubItem("Patologias Pulmonares", tabName = "di_pat_pulm"),
                     menuSubItem("Patologias Cardiológicas", tabName = "di_pat_card"),
                     menuSubItem("Acessos Venosos", tabName = "di_ac_venosos"),
                     menuSubItem("Patologias Neurológicas", tabName = "di_pat_neur"),
                     menuSubItem("Patologias Hematológicas", tabName = "di_pat_hemat"),
                     menuSubItem("Patologias Infecciosas", tabName = "di_pat_infec"),
                     menuSubItem(HTML("Patologias Metabólicas <br/> e Evolução Nutricional"), tabName = "di_pat_nut")
            ),
            menuItem("Dados da Alta", tabName = "dados_alta")
        )
    ),
    
    body <- dashboardBody(
        tabItems(
            tabItem("Identificação", tabName = "id"),
            tabItem("Dados Maternos", tabName = "dados_maternos"),
            tabItem("Dados do Parto", tabName = "dados_parto"),
            tabItem("Dados do Internamento", tabName = "dados_internamento"),
            tabItem("Dados de Entrada", tabName = "di_dados_entrada"),
            tabItem("Patologias Pulmonares", tabName = "di_pat_pulm"),
            tabItem("Patologias Cardiológicas", tabName = "di_pat_card"),
            tabItem("Acessos Venosos", tabName = "di_ac_venosos"),
            tabItem("Patologias Neurológicas", tabName = "di_pat_neur"),
            tabItem("Patologias Hematológicas", tabName = "di_pat_hemat"),
            tabItem("Patologias Infecciosas", tabName = "di_pat_infec"),
            tabItem(HTML("Patologias Metabólicas <br/> e Evolução Nutricional"), tabName = "di_pat_nut"),
            tabItem("Dados da Alta", tabName = "dados_alta")
        )
    )
)