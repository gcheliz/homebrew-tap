class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.47/gtunnel-macos-arm64-v0.2.47.tar.gz"
      sha256 "17428c3314b47f9e7de100b864f1848335411611c4062f37aa6d58c1216c6cf1"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.47/gtunnel-macos-intel-v0.2.47.tar.gz"
      sha256 "758aa1f323e310fd22d70d0fadb17b7bde9b440634e35193c1ffeb6c9c1d6b06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.47/gtunnel-linux-arm64-v0.2.47.tar.gz"
      sha256 "3ec668f61fae0a14ed30795dc7144e5a9089f60f51d173a7883010a693834b07"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.47/gtunnel-linux-amd64-v0.2.47.tar.gz"
      sha256 "5c4cdc4c836a550773f79ca8f0654851f922b48d0c2713aa812a4d6cc7fe34da"
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
