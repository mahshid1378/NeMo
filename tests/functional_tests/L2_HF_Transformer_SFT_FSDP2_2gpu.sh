# Copyright (c) 2020-2025, NVIDIA CORPORATION.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
TRANSFORMERS_OFFLINE=1 \
      coverage run --branch -a --data-file=/workspace/.coverage --source=/workspace/nemo tests/collections/llm/hf/sft_fsdp2.py --model /home/TestData/nlp/hf_gemma/hf_gemma_2b --max-steps 10 --devices 2
TRANSFORMERS_OFFLINE=1 HF_HOME=/home/TestData/automodel/hf_home coverage run --branch -a --data-file=/workspace/.coverage --source=/workspace/nemo examples/llm/sft/automodel.py --model /home/TestData/nlp/hf_gemma/hf_gemma_2b --max-steps 10 --devices 2 --strategy fsdp2
