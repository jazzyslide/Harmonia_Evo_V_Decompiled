.class Landroid/widget/IMECursorAdapter$1;
.super Landroid/widget/CursorFilter;
.source "IMECursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/IMECursorAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/IMECursorAdapter;


# direct methods
.method constructor <init>(Landroid/widget/IMECursorAdapter;Landroid/widget/CursorFilter$CursorFilterClient;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/IMECursorAdapter$1;->this$0:Landroid/widget/IMECursorAdapter;

    invoke-direct {p0, p2}, Landroid/widget/CursorFilter;-><init>(Landroid/widget/CursorFilter$CursorFilterClient;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    iget-object v3, p0, Landroid/widget/IMECursorAdapter$1;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v3, p1}, Landroid/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v3, p0, Landroid/widget/IMECursorAdapter$1;->this$0:Landroid/widget/IMECursorAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/IMECursorAdapter;->stringCorrection(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/IMECursorAdapter$1;->this$0:Landroid/widget/IMECursorAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/IMECursorAdapter;->reQueryOnBackgroundThread(Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    :cond_2
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_3
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0
.end method
