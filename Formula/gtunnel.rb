class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.54/gtunnel-macos-arm64-v0.2.54.tar.gz"
      sha256 "78d1df2a250e3bbf46921acfd10e8788b88a72f35c1a21f724425d9b16b479d8"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.54/gtunnel-macos-intel-v0.2.54.tar.gz"
      sha256 "1e7512220a798b62aba09d2663aecc74839b3ed1c47abf73e5f1dbe4da076f12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.54/gtunnel-linux-arm64-v0.2.54.tar.gz"
      sha256 "a6d1cff9a7e63c5616a50d863512dffc574bf86d2e4f78ddd18accfbe6786f5e"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.54/gtunnel-linux-amd64-v0.2.54.tar.gz"
      sha256 "380702c7d376c343c971d91dedb60fe0e98335fbdbc9d446f3cfa7890c3f8c0f"
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
