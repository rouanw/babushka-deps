dep "asciidoc.bin" do
  installs "asciidoc"
end

dep "cdargs.bin" do
  installs "cdargs"
end

dep "git.bin" do
  installs "git"
end

dep "gradle.bin" do
  installs "gradle"
end

dep "maven.bin" do
  installs "maven"
end

dep "mongodb.bin" do
  installs "mongodb"
end

dep "mysql.bin" do
  installs "mysql"
end

dep "openssl.bin" do
  installs "openssl"
end

dep "pidof.bin" do
  installs "pidof"
end

dep "python.bin" do
  installs "pidof"
end

dep "source-highlight.bin" do
  installs "source-highlight"
end

dep "sqlite.bin" do
  installs "sqlite"
end

dep "ssh-copy-id.bin" do
  installs "ssh-copy-id"
end

dep "all-packaged-apps" do
  requires "cdargs.bin"
  requires "git.bin"
  requires "gradle.bin"
  # requires "maven.bin"
  # requires "mongodb.bin"
  requires "mysql.bin"
  requires "openssl.bin"
  requires "pidof.bin"
  requires "python.bin"
  requires "source-highlight.bin"
  # requires "sqlite.bin"
  requires "ssh-copy-id.bin"
end
