$Days = 14 # remove snapshots older than x days

$VMs = Get-VM
foreach($VM in $VMs){
    $Snapshots = Get-VMSnapshot $VM

    foreach($Snapshot in $Snapshots){
        if ($snapshot.CreationTime.AddDays($Days) -lt (get-date)){
            Remove-VMSnapshot $Snapshot
        }
    }

    Checkpoint-VM $VM
}

exit