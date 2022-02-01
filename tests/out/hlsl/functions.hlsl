
float2 test_fma()
{
    float2 a = float2(2.0, 2.0);
    float2 b = float2(0.5, 0.5);
    float2 c = float2(0.5, 0.5);
    return mad(a, b, c);
}

void test_integer_dot_product()
{
    int2 a_2_ = int2(1.xx);
    int2 b_2_ = int2(1.xx);
    int c_2_ = dot(a_2_, b_2_);
    uint3 a_3_ = uint3(1u.xxx);
    uint3 b_3_ = uint3(1u.xxx);
    uint c_3_ = dot(a_3_, b_3_);
    int c_4_ = dot(int4(4.xxxx), int4(2.xxxx));
}

[numthreads(1, 1, 1)]
void main()
{
    const float2 _e0 = test_fma();
    test_integer_dot_product();
    return;
}
