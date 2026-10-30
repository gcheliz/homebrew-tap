class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.56/gtunnel-macos-arm64-v0.2.56.tar.gz"
      sha256 "2b67d4e9335b1b93077fc4170ad5511c53c1ea820b9c3349009acdaf837a1d4f"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.56/gtunnel-macos-intel-v0.2.56.tar.gz"
      sha256 "262315f7fb7fbe61c1992ebf4089d971a5c3d6906dfe734c31a3bd95978a4973"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.56/gtunnel-linux-arm64-v0.2.56.tar.gz"
      sha256 "ce45b57724a85622934503d7c1460895bdb9ffd56b51a602735eff00e7203158"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.56/gtunnel-linux-amd64-v0.2.56.tar.gz"
      sha256 "026423bf75687d90d2ab1a674a62cc8f82de311d63370a174bfa25e52e0b3333"
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
