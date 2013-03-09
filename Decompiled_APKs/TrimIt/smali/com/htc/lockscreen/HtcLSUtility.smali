.class public Lcom/htc/lockscreen/HtcLSUtility;
.super Ljava/lang/Object;
.source "HtcLSUtility.java"


# static fields
.field public static final BASE_PACKAG_NAME:Ljava/lang/String; = "com.htc.idlescreen.base"

.field public static final LOG_PREFIX:Ljava/lang/String; = "HtcLSUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doKeyguard(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.LOCKSCREEN_DO_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public static doKeyguard(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.LOCKSCREEN_DO_KEYGUARD_WITH_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ui_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method public static getIdleScreen(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/htc/lockscreen/HtcLSUtility;->loadSettings(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getIdleScreenInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    .locals 12
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v9, 0x0

    .line 154
    const/4 v2, 0x0

    .line 156
    .local v2, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    if-nez p1, :cond_0

    .line 158
    :try_start_0
    const-string v8, "HtcLSUtility"

    const-string v10, "getIdleScreenConnLocked~ componentName is null"

    invoke-static {v8, v10}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 194
    :goto_0
    return-object v8

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v10, 0x1080

    invoke-virtual {v8, p1, v10}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 165
    .local v7, si:Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.lockscreen.idlescreen.IdleScreenService"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v10, 0x80

    invoke-virtual {v8, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 169
    .local v5, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 170
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 171
    .local v6, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    .line 174
    :try_start_1
    new-instance v3, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3, p0, v8}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    .local v3, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    move-object v2, v3

    .line 184
    .end local v3           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    .end local v6           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v2       #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    :cond_1
    if-nez v2, :cond_3

    .line 185
    :try_start_2
    const-string v8, "HtcLSUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIdleScreenConnLocked~ selected service is not a idlescreen:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 186
    goto :goto_0

    .line 176
    .restart local v6       #rsi:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "HtcLSUtility"

    const-string v10, "getIdleScreenConnLocked~ IdleScreenInfo create error"

    invoke-static {v8, v10, v0}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v9

    .line 178
    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    .end local v1           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #rsi:Landroid/content/pm/ServiceInfo;
    .end local v7           #si:Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v0

    .line 191
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "HtcLSUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIdleScreenConnLocked~ Unknown component:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 192
    goto/16 :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #i:I
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7       #si:Landroid/content/pm/ServiceInfo;
    :cond_3
    move-object v8, v2

    .line 194
    goto/16 :goto_0
.end method

.method public static getIdleScreenLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "comp"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, label:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/htc/lockscreen/HtcLSUtility;->getIdleScreenInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    move-result-object v0

    .line 146
    .local v0, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 148
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #label:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 150
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .restart local v1       #label:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getSenseVersion()F
    .locals 2

    .prologue
    .line 81
    const/high16 v0, 0x4000

    .line 83
    .local v0, version:F
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 84
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getStyleSettingKey(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 203
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 204
    const-string v0, "com.htc.idlescreen.style.dock"

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.htc.idlescreen.style.normal"

    goto :goto_0
.end method

.method public static isWithIdleScreenBase(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, ret:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 109
    .local v0, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.htc.idlescreen.base"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const/4 v1, 0x1

    .line 116
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v2

    goto :goto_0

    .line 111
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static loadSettings(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 8
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 221
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 222
    .local v0, comp:Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/htc/lockscreen/HtcLSUtility;->getStyleSettingKey(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, key:Ljava/lang/String;
    :try_start_0
    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, compStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    .end local v1           #compStr:Ljava/lang/String;
    :goto_0
    const-string v5, "HtcLSUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSettings comp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-object v0

    .line 226
    .restart local v1       #compStr:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    .end local v1           #compStr:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 230
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "HtcLSUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSettings failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeNotification(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, pkg:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "packageName is null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "HtcLockScreenRemoveNotfiication"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "PackageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method static removeView(Landroid/content/Context;Lcom/htc/lockscreen/HtcLSViewGroup;)V
    .locals 3
    .parameter "context"
    .parameter "lsView"

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreenRemoveView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PackageName"

    invoke-virtual {p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public static removeView(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreenRemoveView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 5
    .parameter "context"
    .parameter "componentName"
    .parameter "mode"

    .prologue
    .line 212
    const-string v2, "HtcLSUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSettings comp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/htc/lockscreen/HtcLSUtility;->getStyleSettingKey(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    return-void
.end method

.method public static setIdleScreen(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "context"
    .parameter "comp"
    .parameter "mode"

    .prologue
    .line 131
    invoke-static {p0, p1, p2}, Lcom/htc/lockscreen/HtcLSUtility;->saveSettings(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen_set_idlescreen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "key_lockscreen_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v1, "key_lockscreen_comp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public static setLockScreenShortcut(Landroid/content/Context;Lcom/htc/lockscreen/widget/ShortcutInfo;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.lockscreen.set_shortcut_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_SHORTCUT_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setLockScreenWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "context"
    .parameter "bitmap"

    .prologue
    .line 238
    return-void
.end method

.method public static setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "ntf"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, pkg:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "packageName is null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_0
    if-nez p2, :cond_1

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "notification data is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_1
    if-gtz p1, :cond_2

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "id is <= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "HtcLockScreenSetNotification"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "notification"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    const-string v2, "PackageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method static setView(Landroid/content/Context;Lcom/htc/lockscreen/HtcLSViewGroup;)V
    .locals 3
    .parameter "context"
    .parameter "lsView"

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreenSetView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "View"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    const-string v1, "PackageName"

    invoke-virtual {p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    return-void
.end method

.method public static supportRemotePhoneService(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    invoke-static {}, Lcom/htc/lockscreen/HtcLSUtility;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4060

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 100
    invoke-static {p0}, Lcom/htc/lockscreen/HtcLSUtility;->isWithIdleScreenBase(Landroid/content/Context;)Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useIdleScreen()Z
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/htc/lockscreen/HtcLSUtility;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_2

    .line 93
    :cond_1
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
