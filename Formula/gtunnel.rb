class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.64/gtunnel-macos-arm64-v0.2.64.tar.gz"
      sha256 "185449d10df240a375d5f748cb9759b6a45978765282c7d87cd4af0395ccddd0"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.64/gtunnel-macos-intel-v0.2.64.tar.gz"
      sha256 "a37b627b32385d5791442bae0672460bbb1155655ea8480171474db24b8aaaba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.64/gtunnel-linux-arm64-v0.2.64.tar.gz"
      sha256 "8859e728c05ec25a93e282aff47705e3f72a960d196a14a07ec5bc45208cab93"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.64/gtunnel-linux-amd64-v0.2.64.tar.gz"
      sha256 "9643af6972a2f0008ac898123121cd4c26095bc3866024c5c1f5a38cf2203709"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
