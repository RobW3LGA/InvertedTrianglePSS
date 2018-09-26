$private:_system = @{

  demoProject = 'ITPSSDemo';
  wpfBotName = 'WPFBot3000';
  wpfBotHighVersion = '0.9.24';
  wpfBotLowVersion = '0.9.24';
  categories = @('action', 'event', 'property', 'component', 'layout', 'utility', 'setting', 'model');
  prompt = 'PS \>';
}

$script:system = @{

  demoProject = $_system.demoProject;
  wpfBotName = $_system.wpfBotName;
  wpfBotHighVersion = $_system.wpfBotHighVersion;
  wpfBotLowVersion = $_system.wpfBotLowVersion;
  categories = $_system.categories;
  prompt = $_system.prompt;
}