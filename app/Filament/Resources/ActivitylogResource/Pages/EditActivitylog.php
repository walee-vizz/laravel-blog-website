<?php

namespace App\Filament\Resources\ActivitylogResource\Pages;

use App\Filament\Resources\ActivitylogResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditActivitylog extends EditRecord
{
    protected static string $resource = ActivitylogResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
