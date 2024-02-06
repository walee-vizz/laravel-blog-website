<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\Activitylog;
use Filament\Resources\Resource;
use Spatie\Activitylog\Models\Activity;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\ActivitylogResource\Pages;
use App\Filament\Resources\ActivitylogResource\RelationManagers;
use Filament\Tables\Columns\TextColumn;

class ActivitylogResource extends Resource
{
    protected static ?string $model = Activity::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                 TextColumn::make('log_name')->sortable()->searchable(),
                 TextColumn::make('Description')->sortable()->searchable(),
                 TextColumn::make('subject_type')->sortable()->searchable(),
                 TextColumn::make('event')->sortable()->searchable(),
                 TextColumn::make('description')->sortable()->searchable(),
                 TextColumn::make('causer.name')->label('Performed By')->sortable()->searchable(),
                 TextColumn::make('created_at')->label('Performed At')->date('H:i:s A, d-M-Y')->sortable()->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ])
            ->emptyStateActions([
                Tables\Actions\CreateAction::make(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListActivitylogs::route('/'),
            'create' => Pages\CreateActivitylog::route('/create'),
            'edit' => Pages\EditActivitylog::route('/{record}/edit'),
        ];
    }
}
