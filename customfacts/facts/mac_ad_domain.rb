#mac_ad_domain.rb
Facter.add(:mac_ad_domain) do
  confine :kernel => "Darwin"
  setcode do
    Facter::Util::Resolution.exec("/usr/sbin/dsconfigad -show | /usr/bin/grep 'Active Directory Domain' | /usr/bin/awk '{print $5}'")
  end
end
