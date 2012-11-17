require File.expand_path("../../base", __FILE__)

describe "salt provisioning with salt stack" do
  include_context "acceptance"

  it "bootstraps the system" do
    # Create the salt basic skeleton
    environment.skeleton!("salt_basic")

    # Setup the basic environment
    require_box("default")
    assert_execute("vagrant", "init")
    assert_execute("vagrant", "box", "add", "base", box_path("default"))

    # Bring up the VM
    assert_execute("vagrant", "up")

    # Check for the file it should have created
    results = assert_execute("vagrant", "ssh", "-c", "uptime")
    puts results.stdout
    results.stdout.should be_kind_of(String)
  end
end
