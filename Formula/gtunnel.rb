class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.58/gtunnel-macos-arm64-v0.2.58.tar.gz"
      sha256 "876ba430ce304c8567cb117339754f0696c05186ae38a378852b4333f18e7b60"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.58/gtunnel-macos-intel-v0.2.58.tar.gz"
      sha256 "5ec4d84b5fcce750cec661b043b1a0f9acc9d23d1d0eca8ce3d75efa1dfeadc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.58/gtunnel-linux-arm64-v0.2.58.tar.gz"
      sha256 "c9518b6fe5e758dfe4ec5df23725a4f45678e6096eb0b337e7c53af116cf3ba9"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.58/gtunnel-linux-amd64-v0.2.58.tar.gz"
      sha256 "e8534fd4e16e840a161b9b60305201cade2e6074160907cb52b0580993990384"
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
