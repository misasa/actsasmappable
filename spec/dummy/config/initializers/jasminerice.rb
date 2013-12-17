Rails.application.config.assets.paths << ActsAsMappable::Engine.root.join("spec", "javascripts") << ActsAsMappable::Engine.root.join("spec", "stylesheets")

# Add engine to view path so that spec/javascripts/fixtures are accessible
ActionController::Base.prepend_view_path ActsAsMappable::Engine.root
