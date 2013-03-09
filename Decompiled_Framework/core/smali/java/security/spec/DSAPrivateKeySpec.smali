.class public Ljava/security/spec/DSAPrivateKeySpec;
.super Ljava/lang/Object;
.source "DSAPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final p:Ljava/math/BigInteger;

.field private final q:Ljava/math/BigInteger;

.field private final x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/spec/DSAPrivateKeySpec;->x:Ljava/math/BigInteger;

    iput-object p2, p0, Ljava/security/spec/DSAPrivateKeySpec;->p:Ljava/math/BigInteger;

    iput-object p3, p0, Ljava/security/spec/DSAPrivateKeySpec;->q:Ljava/math/BigInteger;

    iput-object p4, p0, Ljava/security/spec/DSAPrivateKeySpec;->g:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/DSAPrivateKeySpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/DSAPrivateKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/DSAPrivateKeySpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/DSAPrivateKeySpec;->x:Ljava/math/BigInteger;

    return-object v0
.end method
