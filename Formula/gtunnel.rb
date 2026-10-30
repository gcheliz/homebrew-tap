class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.53/gtunnel-macos-arm64-v0.2.53.tar.gz"
      sha256 "a925ab8d2e6083e41bc27d9dbb2f7138290f362ff25aea7f4f878ea3ee9509e7"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.53/gtunnel-macos-intel-v0.2.53.tar.gz"
      sha256 "86e51f78ad7eab821c278d556a0eebc7ef0b1f683e9f1e2bf832fcaccfb486cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.53/gtunnel-linux-arm64-v0.2.53.tar.gz"
      sha256 "b87d49fefca077354ef7199d30d0ab9ee04a3233a6c7bb3aea9b71e28b8e0479"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.53/gtunnel-linux-amd64-v0.2.53.tar.gz"
      sha256 "842a08752630b598aa6cc24814fa9ad7409485ec8c475dafc06a646d9854d113"
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
