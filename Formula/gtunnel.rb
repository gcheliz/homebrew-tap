class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.31/gtunnel-macos-arm64-v0.3.31.tar.gz"
      sha256 "0f500bfe120d32f3d809dbfda982f581e3b5f700885904a72abffd24b59fa328"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.31/gtunnel-macos-intel-v0.3.31.tar.gz"
      sha256 "8b3bbde7ca0d0cab0544b0bf8cf08ac789381464ee01fe71db940e4cbfc5e818"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.31/gtunnel-linux-arm64-v0.3.31.tar.gz"
      sha256 "e9e0bf22dbaf5d4e51c027aa8f7975886af45469855df559c7a37ae6fb5c8a92"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.31/gtunnel-linux-amd64-v0.3.31.tar.gz"
      sha256 "86577fd535c68faf8ffc9635b2e781ef519703f06a5e064fd12ded4a35f0f2f9"
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
