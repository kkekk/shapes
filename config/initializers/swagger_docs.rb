Swagger::Docs::Config.register_apis(
  "1.0" => {
    # the extension used for the API
    # api_extension_type: :json,
    # if you want to delete all .json files at each generation, defaults to true
    # :clean_directory => false,
    # rails in API mode uses ActionController::API as base
    base_api_controller: ActionController::API,
    # add custom attributes to api-docs
    attributes: {
      info: {
        title: "Shapes",
        description: "Create shapes, and get them!",
        contact: "yeongeechong@gmail.com",
        license: "GNU GPL v3",
        licenseUrl: "https://www.gnu.org/licenses/gpl-3.0.en.html"
      }
    }
  }
)
