class Twf < Formula
  desc "Standalone tree view file explorer, inspired by fzf"
  homepage "https://github.com/guilhermeprokisch/twf"
  head "https://github.com/guilhermeprokisch/twf.git"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"twf", "github.com/guilhermeprokisch/twf/cmd/twf"
  end

  def caveats
    <<~EOS
      See https://github.com/guilhermeprokisch/twf for application-specific integrations,
      such as with vim and zsh.
    EOS
  end
end
