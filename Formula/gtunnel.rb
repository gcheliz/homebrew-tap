class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.55/gtunnel-macos-arm64-v0.2.55.tar.gz"
      sha256 "38d9764a666409d4ed6466f9b56ceb4da461494aaa7a5504968f195cf6f27856"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.55/gtunnel-macos-intel-v0.2.55.tar.gz"
      sha256 "51dfef8ffa9097f9e57f0c74c63d5594fa7dd0b9cf157f1c3a76dd5900773b3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.55/gtunnel-linux-arm64-v0.2.55.tar.gz"
      sha256 "c6aafbacfc94980710c3e2087ecab1666ef67311415c7ae680db3ae19552be12"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.55/gtunnel-linux-amd64-v0.2.55.tar.gz"
      sha256 "6beef925ddca4713041767a332212f5a7443c8a64c72221a082a94cd37990563"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  def caveats
    <<~EOS
      gtunnel drives gcloud and needs a logged-in Google Cloud CLI:
        gcloud auth login
      Prerequisites and IAM: https://github.com/gcheliz/gtunnel/blob/main/docs/usage.md#getting-set-up
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
