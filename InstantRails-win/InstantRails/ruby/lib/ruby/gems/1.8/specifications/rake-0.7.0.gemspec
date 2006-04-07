Gem::Specification.new do |s|
  s.name = %q{rake}
  s.version = "0.7.0"
  s.date = %q{2006-01-18}
  s.summary = %q{Ruby based make-like utility.}
  s.email = %q{jim@weirichhouse.org}
  s.homepage = %q{http://rake.rubyforge.org}
  s.rubyforge_project = %q{rake}
  s.description = %q{Rake is a Make-like program implemented in Ruby. Tasks and dependencies are specified in standard Ruby syntax.}
  s.default_executable = %q{rake}
  s.has_rdoc = true
  s.authors = ["Jim Weirich"]
  s.files = ["install.rb", "CHANGES", "Rakefile", "README", "TODO", "MIT-LICENSE", "bin/rake", "lib/rake.rb", "lib/rake/clean.rb", "lib/rake/tasklib.rb", "lib/rake/packagetask.rb", "lib/rake/rdoctask.rb", "lib/rake/runtest.rb", "lib/rake/testtask.rb", "lib/rake/gempackagetask.rb", "lib/rake/ruby182_test_unit_fix.rb", "lib/rake/rake_test_loader.rb", "lib/rake/classic_namespace.rb", "lib/rake/contrib/ftptools.rb", "lib/rake/contrib/sys.rb", "lib/rake/contrib/compositepublisher.rb", "lib/rake/contrib/publisher.rb", "lib/rake/contrib/rubyforgepublisher.rb", "lib/rake/contrib/sshpublisher.rb", "lib/rake/loaders/makefile.rb", "test/filecreation.rb", "test/test_filelist.rb", "test/test_fileutils.rb", "test/test_package_task.rb", "test/test_ftp.rb", "test/test_clean.rb", "test/shellcommand.rb", "test/test_tasks.rb", "test/functional.rb", "test/test_rake.rb", "test/test_makefile_loader.rb", "test/test_test_task.rb", "test/session_functional.rb", "test/test_rules.rb", "test/test_file_creation_task.rb", "test/test_file_task.rb", "test/test_earlytime.rb", "test/test_multitask.rb", "test/test_definitions.rb", "test/test_task_manager.rb", "test/test_namespace.rb", "test/contrib/testsys.rb", "test/data/rbext/rakefile.rb", "test/data/sample.mf", "test/data/imports/deps.mf", "test/data/default/Rakefile", "test/data/multidesc/Rakefile", "test/data/chains/Rakefile", "test/data/dryrun/Rakefile", "test/data/imports/Rakefile", "test/data/namespace/Rakefile", "test/data/file_creation_task/Rakefile", "doc/example", "doc/glossary.rdoc", "doc/proto_rake.rdoc", "doc/jamis.rb", "doc/rational.rdoc", "doc/rakefile.rdoc", "doc/release_notes", "doc/rake.1.gz", "doc/example/Rakefile1", "doc/example/Rakefile2", "doc/example/a.c", "doc/example/b.c", "doc/example/main.c", "doc/release_notes/rake-0.4.14.rdoc", "doc/release_notes/rake-0.5.3.rdoc", "doc/release_notes/rake-0.4.15.rdoc", "doc/release_notes/rake-0.6.0.rdoc", "doc/release_notes/rake-0.5.0.rdoc", "doc/release_notes/rake-0.5.4.rdoc", "doc/release_notes/rake-0.7.0.rdoc"]
  s.rdoc_options = ["--title", "Rake -- Ruby Make", "--main", "README", "--line-numbers"]
  s.extra_rdoc_files = ["README", "MIT-LICENSE", "TODO", "CHANGES", "doc/glossary.rdoc", "doc/proto_rake.rdoc", "doc/rational.rdoc", "doc/rakefile.rdoc", "doc/release_notes/rake-0.4.14.rdoc", "doc/release_notes/rake-0.5.3.rdoc", "doc/release_notes/rake-0.4.15.rdoc", "doc/release_notes/rake-0.6.0.rdoc", "doc/release_notes/rake-0.5.0.rdoc", "doc/release_notes/rake-0.5.4.rdoc", "doc/release_notes/rake-0.7.0.rdoc"]
  s.executables = ["rake"]
end
