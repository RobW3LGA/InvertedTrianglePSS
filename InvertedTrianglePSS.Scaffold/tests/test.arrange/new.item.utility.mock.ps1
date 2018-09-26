Class ItemMock {
  [string]$value;
  [string]$path;
  [string]$name;
  [string]$itemType;
}

$private:_newItemMock = @{

  called = 0;
}

$script:newItemMock = @{

  items = @();
  throw    = $false;
  called   = $_newItemMock.called;
}

function script:newItem {
  Param(
    [Parameter(Mandatory = $false, ValueFromPipeline = $true)][string]$Value,
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][string]$Name,
    [Parameter(Mandatory = $true)][string]$ItemType
  )

  $newItemMock.called++;
  $item = [ItemMock]::new();

  if (!$newItemMock.throw) {

    $item.value = $Value;
    $item.path = $Path;
    $item.name = $Name;
    $item.itemType = $ItemType;

    $newItemMock.items += $item;
  }
  else { throw $newItemMock.throw }
}