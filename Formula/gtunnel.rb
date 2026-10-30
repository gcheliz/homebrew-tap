class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.50/gtunnel-macos-arm64-v0.2.50.tar.gz"
      sha256 "7f5905e6cfa752c5118dcecc2c539c9232ab356d0b011f426671490edc258ebd"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.50/gtunnel-macos-intel-v0.2.50.tar.gz"
      sha256 "c3ce2fc7b7ff3f015c7b1b931db6e24a9fdbf2ffd500573521ca1e13261bad3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.50/gtunnel-linux-arm64-v0.2.50.tar.gz"
      sha256 "9ab7dc8d44be3940fba7abbae700b1a63561a75466871bccc7ac4c72bae37ea2"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.50/gtunnel-linux-amd64-v0.2.50.tar.gz"
      sha256 "a580455a8d54d1a9d21922bdba07120ce6f30f807db88d1a492a2171d71bee2b"
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
