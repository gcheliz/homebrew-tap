class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.34/gtunnel-macos-arm64-v0.3.34.tar.gz"
      sha256 "827e4292949a9c254f996391572f5dfe7f9e7f71946911f2c8934815b5264522"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.34/gtunnel-macos-intel-v0.3.34.tar.gz"
      sha256 "232a5e2bc3a6dcc395fd9e35e4ed4399298469fa7d72f3400528322bc0a5bcc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.34/gtunnel-linux-arm64-v0.3.34.tar.gz"
      sha256 "467b6be2246e19eaa88d58ca94600a64c0df1a53ffe50761e35cf2a2a6fb30a4"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.34/gtunnel-linux-amd64-v0.3.34.tar.gz"
      sha256 "1676d23458305344087778cd403b1aed21565c60b6f8bacd8c2d7ac7bca4647b"
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
