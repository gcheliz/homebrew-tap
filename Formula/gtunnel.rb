class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.12/gtunnel-macos-arm64-v0.3.12.tar.gz"
      sha256 "b5714c5c9b89d88a5db88b3065f4cbc48205419dc23a432cedb8ff98982d7775"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.12/gtunnel-macos-intel-v0.3.12.tar.gz"
      sha256 "c37ae361f61181863c85e4de7bea6a3edf69f373727fdbd242590f33b1317727"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.12/gtunnel-linux-arm64-v0.3.12.tar.gz"
      sha256 "37d5ed88242cf2490dff1beb7d5e7c8ba822af835588599ceab8e40d7cdf01e8"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.12/gtunnel-linux-amd64-v0.3.12.tar.gz"
      sha256 "51a564bea4ec8f90cd9717c1dc46de872bd29286015d1fbd71fe2725af4eb79b"
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
