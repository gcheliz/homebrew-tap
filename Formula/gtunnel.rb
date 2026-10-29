class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  version "0.2.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.35/gtunnel-macos-arm64-v0.2.35.tar.gz"
      sha256 "4370c7e7d2f637be452420efc80c61556fa5ef3c5ff3c39bd8476d58e6ba445f"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.35/gtunnel-macos-intel-v0.2.35.tar.gz"
      sha256 "ba2ee203810ab34134818df37c4af44bf6f7bd75302d52ba5f9437716e6e757e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.35/gtunnel-linux-arm64-v0.2.35.tar.gz"
      sha256 "0689e433a8cc774227a1d789653304c0b3c7541282e92f72f8b25b1d8d96b003"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.35/gtunnel-linux-amd64-v0.2.35.tar.gz"
      sha256 "bd5f02010d5c1f8bd2c9c8452b97102bf2146db219110bd4a1b3b2fe829a2a7b"
    end
  end

  def install
    bin.install "gtunnel"
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
