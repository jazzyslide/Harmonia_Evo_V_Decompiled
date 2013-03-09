.class public Lcom/htc/android/epst/translator/DmuPKTranslator;
.super Ljava/lang/Object;
.source "DmuPKTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DmuPKTranslator"


# instance fields
.field private index:I

.field private indexStr:Ljava/lang/String;

.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 35
    iput p1, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->index:I

    .line 36
    const-string v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->indexStr:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 40
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 41
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/htc/android/epst/translator/DmuPKTranslator$1;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/DmuPKTranslator$1;-><init>(Lcom/htc/android/epst/translator/DmuPKTranslator;)V

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "DmuPKTranslator"

    const-string v1, "Update All"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 79
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 6
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 82
    const-string v0, "DmuPKTranslator"

    const-string v1, "Request Read"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p2, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 88
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x356

    iget-object v3, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->indexStr:Ljava/lang/String;

    move v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestRead(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 90
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 8
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v2, 0x356

    .line 94
    const-string v0, "DmuPKTranslator"

    const-string v1, "Request Write"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p2, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 96
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, value:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    iget v1, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->index:I

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v6

    check-cast v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;

    .line 101
    .local v6, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;
    invoke-virtual {v6, v7}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->setPkoId(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x27

    iget-object v3, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->indexStr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestWrite(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 105
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 5
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 108
    const-string v2, "DmuPKTranslator"

    const-string v3, "Retrieve and Update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0x356

    iget v4, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->index:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;

    .line 112
    .local v0, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;
    const-string v1, ""

    .line 114
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_PKOID_I;->getPkoId()Ljava/lang/String;

    move-result-object v1

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/translator/DmuPKTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v2, p1, p2, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 119
    return-void
.end method
