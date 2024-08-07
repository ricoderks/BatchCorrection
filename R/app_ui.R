#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#'
#' @rawNamespace import(shiny, except = c(dataTableOutput, renderDataTable))
#'
#' @importFrom waiter autoWaiter spin_loader
#'
#' @noRd
#'
app_ui <- function(request) {
  tagList(
    golem_add_external_resources(),

    waiter::autoWaiter(html = waiter::spin_loader(),
                       color = NA),
    bslib::page_navbar(
      title = paste0("CPM - BatchCorrection | v", utils::packageVersion("BatchCorrection")),
      underline = TRUE,
      bslib::nav_panel(
        title = "Data",
        mod_data_ui(id = "data")
      ),
      bslib::nav_panel(
        title = "Data overview",
        mod_visualization_ui(id = "viz")
      ),
      bslib::nav_panel(
        title = "Batch correction",
        mod_batch_correction_ui(id = "bc")
      ),
      bslib::nav_spacer(),
      bslib::nav_menu(
        title = "Help",
        bslib::nav_panel(
          title = "Help",
          mod_help_ui(id = "help")
        ),
        "----",
        bslib::nav_panel(
          title = "About",
          mod_about_ui(id = "about")
        )
      )
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @rawNamespace import(shiny, except = c(dataTableOutput, renderDataTable))
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#'
#' @noRd
#'
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "BatchCorrection"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
