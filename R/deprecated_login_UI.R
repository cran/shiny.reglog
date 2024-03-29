#' Shiny UI module for login box
#'
#' @description 
#' `r lifecycle::badge("deprecated")`
#' 
#' It need to be used in conjuction with [login_server()] function and is suggested to be used alongside [password_reset_UI()] and [register_UI()] for full potential.
#'
#' This function creates a UI div() element containing informations and input necessary for user to log-in.
#' As it outputs a div() element, you can put it inside container of your choosing (be it some tabItem, fluidPage, fluidRow etc.)
#'
#'
#' @param id the id of the module. Defaults to "login_system" for all of the modules contained within the package. If you plan to use serveral login systems inside your app or for any other reason need to change it, remember to keep consistent id for all elements of module.
#' @param lang specifies the app used language. Accepts "en" or "pl". Defaults to "en"
#' @param custom_txts named list containing customized texts. For more details,
#' see documentation for 'reglog_txt'. Provided list can contain only elements
#' used by this function, but it is recommended to provide the same list for
#' every 'shiny.reglog' function
#'
#' @return 'tags$div' containing all elements for login procedure 
#'
#' @seealso login_server() for more details and example
#' @keywords internal
#' @export
#'

login_UI <- function(id = "login_system",
                     lang = "en",
                     custom_txts = NULL) {
  
  lifecycle::deprecate_warn(
    "0.5.0",
    "login_UI()",
    "RegLog_login_UI()")

  ns <- NS(id)
  
  div(h1("Login"),
      textInput(ns("login_user_id"),
                label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="user_id")
                ),
      passwordInput(ns("password_login"),
                    label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="password")
                    ),
      actionButton(ns("login_button"),
                   label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="login_bttn")
                   )
      )
}

#' Shiny UI module for password reset
#'
#' @description 
#' `r lifecycle::badge("deprecated")`
#' 
#' It need to be used in conjuction with [login_server()] function and is suggested to be used alongside [login_UI()] and [register_UI()] for full potential.
#'
#' This function creates a UI div() element containing informations and input necessary for user to reset password.
#' As it outputs a div() element, you can put it inside container of your choosing (be it some tabItem, fluidPage, fluidRow etc.). It is important to mention that password reset procedure invokes modalDialog(), so it should be avoided to contain this function inside one.
#'
#'
#' @param id the id of the module. Defaults to "login_system" for all of the modules contained within the package. If you plan to use serveral login systems inside your app or for any other reason need to change it, remember to keep consistent id for all elements of module.
#' @param lang specifies the app used language. Accepts "en" or "pl". Defaults to "en"
#' @param custom_txts named list containing customized texts. For more details,
#' see documentation for 'reglog_txt'. Provided list can contain only elements
#' used by this function, but it is recommended to provide the same list for
#' every 'shiny.reglog' function
#' 
#' @return 'tags$div' containing all elements for password reset procedure 
#' @keywords internal
#' @seealso login_server() for more details and example
#'
#' @export

password_reset_UI <- function(id = "login_system",
                              lang = "en",
                              custom_txts = NULL) {
  
  lifecycle::deprecate_warn(
    "0.5.0",
    "password_reset_UI()",
    "RegLog_resetPass_UI()")
  
  ns <- NS(id)

  div(
    h1(reglog_txt(lang = lang, custom_txts = custom_txts, x ="reset_ui_1")),
    p(reglog_txt(lang = lang, custom_txts = custom_txts, x ="reset_ui_2")),
    textInput(ns("resetpass_user_ID"),
              label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="user_id")
              ),
    actionButton(ns("resetpass_send"),
                 label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="reset_bttn_1")),
    p(reglog_txt(lang = lang, custom_txts = custom_txts, x ="reset_ui_3")),
    textInput(ns("resetpass_code"),
              label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="reset_ui_4")
              ),
    actionButton(ns("resetpass_code_bttn"),
                 label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="reset_bttn_2")
                 )
  )
}

#### UI module for registration ####

#' Shiny UI module for registration box
#'
#' @description 
#' `r lifecycle::badge("deprecated")`
#' 
#' It need to be used in conjuction with [login_server()] function and is suggested to be used alongside [login_UI()] and [password_reset_UI()] for full potential.
#' 
#' This function creates a UI div() element containing informations and input necessary for user to register new account.
#' As it outputs a div() element, you can put it inside container of your choosing (be it some tabItem, fluidPage, fluidRow etc.)
#'
#' @param id the id of the module. Defaults to "login_system" for all of the modules contained within the package. If you plan to use serveral login systems inside your app or for any other reason need to change it, remember to keep consistent id for all elements of module.
#' @param lang specifies the app used language. Accepts "en" or "pl". Defaults to "en"
#' @param custom_txts named list containing customized texts. For more details,
#' see documentation for 'reglog_txt'. Provided list can contain only elements
#' used by this function, but it is recommended to provide the same list for
#' every 'shiny.reglog' function
#'
#' @return 'tags$div' containing all elements for registration procedure
#' @keywords internal
#' @seealso login_server() for more details and example
#'
#' @export

register_UI <- function(id = "login_system",
                        lang = "en",
                        custom_txts = NULL){
  
  lifecycle::deprecate_warn(
    "0.5.0",
    "register_UI()",
    "RegLog_register_UI()")

  ns <- NS(id)

  div(
    h1(reglog_txt(lang = lang, custom_txts = custom_txts, x ="register_ui_1")),
    p(reglog_txt(lang = lang, custom_txts = custom_txts, x ="register_ui_2"),
      tags$ul(tags$li(reglog_txt(lang = lang, custom_txts = custom_txts, x ="register_ui_3")),
              tags$li(reglog_txt(lang = lang, custom_txts = custom_txts, x ="register_ui_4")))),
    textInput(ns("register_user_ID"), 
              label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="user_id")
              ),
    textInput(ns("register_email"), 
              label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="email")
              ),
    passwordInput(ns("register_pass1"), 
                  label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="password")
                  ),
    passwordInput(ns("register_pass2"), 
                  label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="password_rep")
                  ),
    actionButton(ns("register_bttn"), 
                 label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="register_bttn")
                 )

  )

}

#' Action Button for logging out
#' 
#' @description `r lifecycle::badge("deprecated")`
#' 
#' To be used in conjuction with deprecated [login_server()]
#' Simple action button - after pressing it, the user will be logged out. 
#' 
#' @param id the id of the module. Defaults to "login_system" for all of the modules contained within the package. If you plan to use serveral login systems inside your app or for any other reason need to change it, remember to keep consistent id for all elements of module.
#' @param lang lang specifies the app used language. Accepts "en" or "pl". Defaults to "en"
#' @param custom_txts named list containing customized texts. For more details,
#' see documentation for 'reglog_txt'. Provided list can contain only elements
#' used by this function, but it is recommended to provide the same list for
#' every 'shiny.reglog' function
#' 
#' @return 'actionButton' for logout
#' @keywords internal
#'
#' @export
#'

logout_button <- function(id = "login_system",
                          lang = "en",
                          custom_txts = NULL){
  
  lifecycle::deprecate_warn(
    "0.5.0",
    "logout_button()",
    details = paste(
      "New 'RegLogServer' class allows to logout using",
      "the 'RegLogServer$logout()' method. Create 'observeEvent' logic",
      "to call this method."))
  
  ns <- NS(id)
  
  actionButton(
    ns("logout_bttn"),
    label = reglog_txt(lang = lang, custom_txts = custom_txts, x ="logout_bttn")
  )
  
}
