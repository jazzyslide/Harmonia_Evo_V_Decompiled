.class Lcom/htc/widget/NumberTableView$TableAdapter;
.super Landroid/widget/BaseAdapter;
.source "NumberTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/NumberTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TableAdapter"
.end annotation


# instance fields
.field protected mCount:I

.field public mData:[I

.field protected mEnd:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayout:Landroid/widget/RelativeLayout;

.field protected mStart:I

.field final synthetic this$0:Lcom/htc/widget/NumberTableView;


# direct methods
.method public constructor <init>(Lcom/htc/widget/NumberTableView;II)V
    .locals 3

    iput-object p1, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/widget/NumberTableView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput p2, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mStart:I

    iput p3, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mEnd:I

    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mCount:I

    iget v1, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mData:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mData:[I

    iget v2, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mCount:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, p2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    #getter for: Lcom/htc/widget/NumberTableView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/widget/NumberTableView;->access$000(Lcom/htc/widget/NumberTableView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mCount:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mEnd:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mStart:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/16 v10, 0x140

    const/16 v9, 0xf0

    const/high16 v8, 0x3f80

    if-eqz p2, :cond_2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    :goto_0
    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    const v6, 0x20200b9

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/widget/NumberTableView;

    #getter for: Lcom/htc/widget/NumberTableView;->mChangeBkg:Z
    invoke-static {v5}, Lcom/htc/widget/NumberTableView;->access$100(Lcom/htc/widget/NumberTableView;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, -0x1

    invoke-virtual {v4, v8, v8, v8, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    iget v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mCount:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mData:[I

    aget v5, v5, p1

    const/16 v6, 0xa

    if-ge v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mData:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/widget/NumberTableView;

    #getter for: Lcom/htc/widget/NumberTableView;->mDigits:I
    invoke-static {v5}, Lcom/htc/widget/NumberTableView;->access$200(Lcom/htc/widget/NumberTableView;)I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/widget/NumberTableView;

    #getter for: Lcom/htc/widget/NumberTableView;->mDigits:I
    invoke-static {v5}, Lcom/htc/widget/NumberTableView;->access$200(Lcom/htc/widget/NumberTableView;)I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    return-object v5

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x20900a3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mData:[I

    aget v5, v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_7

    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/widget/NumberTableView;

    #getter for: Lcom/htc/widget/NumberTableView;->AM:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/widget/NumberTableView;->access$300(Lcom/htc/widget/NumberTableView;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/widget/NumberTableView;

    #getter for: Lcom/htc/widget/NumberTableView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/widget/NumberTableView;->access$000(Lcom/htc/widget/NumberTableView;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    if-ne v5, v10, :cond_5

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-eq v5, v9, :cond_6

    :cond_5
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    if-ne v5, v9, :cond_8

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-ne v5, v10, :cond_8

    :cond_6
    const/high16 v5, 0x41b0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/widget/NumberTableView;

    #getter for: Lcom/htc/widget/NumberTableView;->PM:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/widget/NumberTableView;->access$400(Lcom/htc/widget/NumberTableView;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_8
    const/high16 v5, 0x41d0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/NumberTableView$TableAdapter;->mData:[I

    return-void
.end method
